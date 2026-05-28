import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:customer_nzubia_global/core/utils/service_locator.dart';
import 'package:customer_nzubia_global/core/theme/custom_theme_extension.dart';
import 'package:customer_nzubia_global/core/widgets/glass_container.dart';
import 'package:customer_nzubia_global/core/widgets/animated_scale_button.dart';
import 'package:customer_nzubia_global/features/shipment/domain/entities/shipment_entity.dart';
import 'package:customer_nzubia_global/features/shipment/presentation/bloc/shipment_list/shipment_list_bloc.dart';
import 'package:customer_nzubia_global/features/shipment/presentation/bloc/shipment_list/shipment_list_event.dart';
import 'package:customer_nzubia_global/features/shipment/presentation/bloc/shipment_list/shipment_list_state.dart';
import 'package:customer_nzubia_global/features/home/presentation/widgets/tracking_search_bar.dart';
import 'package:customer_nzubia_global/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:customer_nzubia_global/features/auth/presentation/bloc/auth/auth_state.dart';
import 'package:customer_nzubia_global/features/dashboard/presentation/widgets/review_dialog.dart';
import 'package:customer_nzubia_global/features/shipment/domain/repositories/shipment_repository.dart';
import 'package:customer_nzubia_global/l10n/app_localizations.dart';
import 'package:customer_nzubia_global/core/widgets/offline_error_widget.dart';
import 'package:customer_nzubia_global/core/network/socket_client.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShipmentListBloc(
        shipmentRepository: sl(),
        socketClient: sl<SocketClient>(),
      )..add(const LoadShipments()),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Use AuthBloc to get the user responsively (handling reloads/async init)
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, authState) {
        if (authState.status == AuthStatus.unauthenticated) {
          // Should ideally redirect, but for now show empty or login prompt
          return const Scaffold(body: Center(child: Text("Please log in")));
        }
        if (authState.user == null) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        final user = authState.user;
        final firstName = user?.firstName ?? 'User';

        return DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: theme.scaffoldBackgroundColor,
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  _buildHeader(context, firstName),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _SliverTabBarDelegate(
                      TabBar(
                        indicatorColor: theme.colorScheme.primary,
                        labelColor: theme.colorScheme.onSurface,
                        unselectedLabelColor: theme.colorScheme.onSurface
                            .withOpacity(0.6),
                        dividerColor: Colors.transparent,
                        tabs: const [
                          Tab(text: 'Sent'),
                          Tab(text: 'Received'),
                        ],
                      ),
                      color: theme.colorScheme.surface,
                    ),
                  ),
                ];
              },
              body: TabBarView(
                children: [
                  _ShipmentList(
                    filter: (s) => s.customerId == user?.id,
                  ), // Sent
                  _ShipmentList(
                    filter: (s) =>
                        s.recipient?.email.toLowerCase() ==
                        user?.email.toLowerCase(),
                  ), // Received
                ],
              ),
            ),
            floatingActionButton: AnimatedScaleButton(
              onPressed: () async {
                await context.push('/create-shipment');
                if (context.mounted) {
                  context.read<ShipmentListBloc>().add(const LoadShipments());
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.primary.withOpacity(0.4),
                      blurRadius: 16,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.add, color: theme.colorScheme.onPrimary),
                    const SizedBox(width: 8),
                    Text(
                      'Ship Now',
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  // Re-implementing _buildHeader here to reference it correctly in NestedScrollView
  Widget _buildHeader(BuildContext context, String firstName) {
    final theme = Theme.of(context);

    return BlocBuilder<ShipmentListBloc, ShipmentListState>(
      builder: (context, state) {
        int activeCount = 0;
        int completedCount = 0;

        if (state.shipments.isNotEmpty) {
          activeCount = state.shipments
              .where(
                (s) => [
                  'IN_TRANSIT',
                  'BOOKED',
                  'PENDING_AGENTS',
                ].contains(s.status),
              )
              .length;
          completedCount = state.shipments
              .where((s) => s.status == 'DELIVERED')
              .length;
        }

        return SliverToBoxAdapter(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  theme.scaffoldBackgroundColor,
                  theme.scaffoldBackgroundColor.withOpacity(0.95),
                ],
              ),
            ),
            padding: const EdgeInsets.fromLTRB(20, 60, 20, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hey, $firstName! 👋',
                      style: theme.textTheme.headlineMedium?.copyWith(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    BlocBuilder<ShipmentListBloc, ShipmentListState>(
                      builder: (context, state) {
                        return IconButton(
                          icon: state.status == ShipmentListStatus.loading
                              ? SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: theme.colorScheme.primary,
                                  ),
                                )
                              : Icon(
                                  Icons.refresh,
                                  color: theme.colorScheme.primary,
                                ),
                          tooltip: 'Refresh',
                          onPressed: state.status == ShipmentListStatus.loading
                              ? null
                              : () => context.read<ShipmentListBloc>().add(
                                  const LoadShipments(),
                                ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Track and manage your shipments',
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.colorScheme.onSurface.withOpacity(0.7),
                  ),
                ),
                const SizedBox(height: 20),

                // Tracking Search Bar
                const TrackingSearchBar(),

                const SizedBox(height: 24),

                Row(
                  children: [
                    Expanded(
                      child: _StatCard(
                        icon: Icons.local_shipping,
                        iconColor: theme.colorScheme.secondary,
                        count: activeCount,
                        label: 'Active',
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _StatCard(
                        icon: Icons.check_circle,
                        iconColor: theme.colorScheme.secondary,
                        count: completedCount,
                        label: 'Completed',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _StatCard extends StatelessWidget {
  final IconData icon;
  final Color? iconColor;
  final int count;
  final String label;

  const _StatCard({
    required this.icon,
    required this.iconColor,
    required this.count,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final content = Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: iconColor, size: 20),
              const SizedBox(width: 8),
              Text(
                '$count',
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurface.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );

    if (isDark) {
      return GlassContainer(child: content);
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: Colors.black.withOpacity(0.05)),
      ),
      child: content,
    );
  }
}

class _DashboardActionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  const _DashboardActionCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.extension<AppColorsExtension>();

    return AnimatedScaleButton(
      onPressed: onPressed,
      child: GlassContainer(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: (colors?.success ?? theme.colorScheme.primary)
                    .withOpacity(0.14),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                icon,
                color: colors?.success ?? theme.colorScheme.primary,
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(0.68),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
              color: theme.colorScheme.onSurface.withOpacity(0.45),
            ),
          ],
        ),
      ),
    );
  }
}

class _ShipmentList extends StatelessWidget {
  final bool Function(ShipmentEntity) filter;

  const _ShipmentList({required this.filter});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<ShipmentListBloc>().add(const LoadShipments());
      },
      child: BlocBuilder<ShipmentListBloc, ShipmentListState>(
        builder: (context, state) {
          if (state.status == ShipmentListStatus.loading &&
              state.shipments.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.status == ShipmentListStatus.failure) {
            return OfflineErrorWidget(
              errorMessage: state.errorMessage ?? 'An error occurred',
              onRetry: () {
                context.read<ShipmentListBloc>().add(const LoadShipments());
              },
            );
          }

          final filteredShipments = state.shipments.where(filter).toList();

          if (filteredShipments.isEmpty) {
            // Must filter state shipments to check if empty
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: GlassContainer(
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.inventory_2_outlined,
                          size: 64,
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withOpacity(0.24),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'No shipments found',
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onSurface,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Your shipment history will appear here.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurface.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 100),
            itemCount: filteredShipments.length,
            itemBuilder: (context, index) {
              final shipment = filteredShipments[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: _ShipmentGlassCard(shipment: shipment),
              );
            },
          );
        },
      ),
    );
  }
}

class _SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;
  final Color _color;

  _SliverTabBarDelegate(this._tabBar, {required Color color}) : _color = color;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(color: _color, child: _tabBar);
  }

  @override
  bool shouldRebuild(_SliverTabBarDelegate oldDelegate) {
    return false;
  }
}

class _ShipmentGlassCard extends StatelessWidget {
  final ShipmentEntity shipment;

  const _ShipmentGlassCard({required this.shipment});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.extension<AppColorsExtension>();

    // Status Logic
    Color statusColor;
    switch (shipment.status.toUpperCase()) {
      case 'DELIVERED':
        statusColor = colors?.success ?? Colors.green;
        break;
      case 'IN_TRANSIT':
        statusColor = theme.colorScheme.primary;
        break;
      case 'BOOKED':
        statusColor = colors?.warning ?? Colors.orange;
        break;
      case 'READY_FOR_PICKUP':
        statusColor = Colors.teal;
        break;
      case 'PICKED_UP':
        statusColor = Colors.cyan;
        break;
      case 'DELAYED':
        statusColor = Colors.red;
        break;
      case 'QUOTATION_ACCEPTED':
      case 'ACCEPTED':
        statusColor = Colors.indigo;
        break;
      case 'PAYMENT_PENDING':
        statusColor = Colors.deepOrange;
        break;
      default:
        statusColor = Colors.grey;
    }

    return Hero(
      tag: 'shipment-${shipment.id}',
      child: AnimatedScaleButton(
        onPressed: () => context.push('/shipment-details', extra: shipment),
        child: GlassContainer(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: statusColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: statusColor.withOpacity(0.5)),
                    ),
                    child: Text(
                      _getLocalizedStatus(
                        context,
                        shipment.status,
                      ).toUpperCase(),
                      style: TextStyle(
                        color: statusColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                  Text(
                    shipment.serviceLevel.replaceAll('_', ' '),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(0.7),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  _buildLocationDot(theme.colorScheme.primary),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      shipment.originAddress,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: theme.colorScheme.onSurface,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 6),
                height: 20,
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: theme.colorScheme.onSurface.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  _buildLocationDot(theme.colorScheme.secondary),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      shipment.destinationAddress,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: theme.colorScheme.onSurface,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Divider(color: theme.colorScheme.onSurface.withOpacity(0.1)),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${shipment.cargoItems.length} ITEMS',
                    style: TextStyle(
                      color: theme.colorScheme.onSurface.withOpacity(0.54),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (shipment.estimatedPrice != null)
                    Text(
                      '\$${shipment.estimatedPrice!.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: colors?.success ?? Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                ],
              ),
              if (_canLeaveReview(context)) ...[
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () => _showReviewDialog(context),
                    icon: const Icon(Icons.star, color: Colors.white, size: 18),
                    label: Text(
                      AppLocalizations.of(context)!.rateReviewAgent,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber[700],
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 0,
                    ),
                  ),
                ),
              ] else if (_hasAlreadyReviewed(context)) ...[
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.green.shade200),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.green.shade600,
                        size: 18,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Review Submitted',
                        style: TextStyle(
                          color: Colors.green.shade700,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  String _getLocalizedStatus(BuildContext context, String status) {
    final l10n = AppLocalizations.of(context)!;
    switch (status.toUpperCase()) {
      case 'REQUESTED':
        return l10n.statusRequested;
      case 'PENDING_AGENTS':
        return l10n.statusPendingAgents;
      case 'BIDDING_ACTIVE':
        return l10n.statusBiddingActive;
      case 'QUOTED':
        return l10n.statusQuoted;
      case 'QUOTATION_ACCEPTED':
        return 'Quotation Accepted';
      case 'PAYMENT_PENDING':
        return 'Payment Pending';
      case 'ACCEPTED':
        return l10n.statusAccepted;
      case 'BOOKED':
        return l10n.statusBooked;
      case 'READY_FOR_PICKUP':
        return l10n.readyForPickup;
      case 'PICKED_UP':
        return 'Picked Up';
      case 'RECEIVED_AT_WAREHOUSE':
        return 'Received at Warehouse';
      case 'LEAVING_ORIGIN_COUNTRY':
        return 'Leaving Origin Country';
      case 'IN_TRANSIT':
        return l10n.statusInTransit;
      case 'IN_CUSTOMS':
        return l10n.inCustoms;
      case 'CUSTOMS_CLEARED':
        return l10n.customsCleared;
      case 'REACHED_DESTINATION_COUNTRY':
        return 'Reached Destination Country';
      case 'ARRIVED_AT_DESTINATION':
        return l10n.arrivedAtDestination;
      case 'ARRIVED_AT_PORT':
        return l10n.statusArrivedAtPort;
      case 'OUT_FOR_DELIVERY':
        return l10n.statusOutForDelivery;
      case 'DELIVERED':
        return l10n.statusDelivered;
      case 'DELAYED':
        return l10n.delayed;
      case 'CANCELLED':
        return l10n.statusCancelled;
      default:
        return status.replaceAll('_', ' ');
    }
  }

  bool _canLeaveReview(BuildContext context) {
    if (shipment.status.toUpperCase() != 'DELIVERED' ||
        shipment.agentId == null)
      return false;
    final authState = context.read<AuthBloc>().state;
    if (authState.user?.role == 'AGENT') return false;
    final userId = authState.user?.id;
    if (userId == null) return false;
    return !shipment.reviews.any((r) => r.authorId == userId);
  }

  bool _hasAlreadyReviewed(BuildContext context) {
    if (shipment.status.toUpperCase() != 'DELIVERED' ||
        shipment.agentId == null)
      return false;
    final authState = context.read<AuthBloc>().state;
    if (authState.user?.role == 'AGENT') return false;
    final userId = authState.user?.id;
    if (userId == null) return false;
    return shipment.reviews.any((r) => r.authorId == userId);
  }

  Future<void> _showReviewDialog(BuildContext context) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (ctx) => ReviewDialog(
        onSubmit: (rating, comment) async {
          try {
            await sl<ShipmentRepository>().submitReview(
              shipment.id,
              rating.toInt(),
              comment,
            );
            return true;
          } catch (e) {
            if (context.mounted) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Failed: $e')));
            }
            return false;
          }
        },
      ),
    );

    if (result == true && context.mounted) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 4),
            backgroundColor: Colors.green.shade600,
            behavior: SnackBarBehavior.floating,
            margin: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            content: const Row(
              children: [
                Icon(Icons.check_circle, color: Colors.white, size: 20),
                SizedBox(width: 10),
                Text(
                  'Review submitted! Thank you for your feedback.',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        );
      context.read<ShipmentListBloc>().add(const LoadShipments());
    }
  }

  Widget _buildLocationDot(Color color) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.5),
            blurRadius: 6,
            spreadRadius: 1,
          ),
        ],
      ),
    );
  }
}
