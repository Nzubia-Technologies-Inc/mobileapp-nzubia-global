import 'package:customer_nzubia_global/core/theme/app_theme.dart';
import 'package:customer_nzubia_global/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:customer_nzubia_global/core/utils/service_locator.dart';
import 'package:customer_nzubia_global/core/theme/custom_theme_extension.dart';
import 'package:customer_nzubia_global/core/widgets/animated_scale_button.dart';
import 'package:customer_nzubia_global/core/widgets/update_status_button.dart';
import 'package:customer_nzubia_global/features/auth/domain/entities/user_entity.dart';
import 'package:customer_nzubia_global/features/shipment/domain/entities/shipment_entity.dart';
import 'package:customer_nzubia_global/features/shipment/presentation/bloc/shipment_list/shipment_list_bloc.dart';
import 'package:customer_nzubia_global/features/shipment/presentation/bloc/shipment_list/shipment_list_event.dart';
import 'package:customer_nzubia_global/features/shipment/presentation/bloc/shipment_list/shipment_list_state.dart';
import 'package:customer_nzubia_global/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:customer_nzubia_global/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:customer_nzubia_global/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:customer_nzubia_global/features/dashboard/presentation/bloc/dashboard/dashboard_event.dart';
import 'package:customer_nzubia_global/features/dashboard/presentation/bloc/dashboard/dashboard_state.dart';
import 'package:customer_nzubia_global/features/dashboard/presentation/pages/agent_finance_screen.dart';
import 'package:customer_nzubia_global/features/shipment/domain/repositories/shipment_repository.dart';
import 'package:customer_nzubia_global/features/messaging/presentation/pages/chat_list_screen.dart';
import 'package:customer_nzubia_global/features/profile/presentation/pages/profile_screen.dart';
import 'package:customer_nzubia_global/core/widgets/offline_error_widget.dart';
import 'package:customer_nzubia_global/core/network/socket_client.dart';
import 'package:customer_nzubia_global/core/services/agent_status_update_service.dart';
import 'package:dio/dio.dart';

class AgentDashboardScreen extends StatelessWidget {
  const AgentDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<DashboardBloc>()..add(LoadDashboardStats())),
        BlocProvider(create: (context) => ShipmentListBloc(
          shipmentRepository: sl(),
          socketClient: sl<SocketClient>(),
        )..add(const LoadShipments())),
      ],
      child: const _AgentDashboardView(),
    );
  }
}

class _AgentDashboardView extends StatefulWidget {
  const _AgentDashboardView();

  @override
  State<_AgentDashboardView> createState() => _AgentDashboardViewState();
}

class _AgentDashboardViewState extends State<_AgentDashboardView> {
  int _selectedIndex = 0;

  String _getDisplayName(UserEntity? user) {
    if (user == null) return AppLocalizations.of(context)!.hello;
    final fullName = user.fullName;
    if (fullName.isNotEmpty) return fullName;
    /*
    if (user.companyName != null && user.companyName!.isNotEmpty) return user.companyName!;
    */
    final emailName = user.email.split('@').first;
    if (emailName.isNotEmpty) return emailName;
    return AppLocalizations.of(context)!.hello;
  }

  Widget _buildKycBanner(BuildContext context, UserEntity? user) {
    final status = user?.kycStatus ?? 'NOT_SUBMITTED';
    final notes = user?.kycNotes;
    Color bannerColor = Colors.orange;
    String title = 'Onboarding Submitted';
    String subtitle = 'Waiting for admin to verify your account.';
    IconData icon = Icons.hourglass_empty;
    bool showButton = false;

    if (status == 'REJECTED') {
      bannerColor = Colors.red;
      title = 'Application Rejected';
      subtitle = 'Your agent application has been rejected. You do not have access to the platform services at this time.';
      icon = Icons.block;
      showButton = false; // No re-submission allowed for direct rejection
    } else if (status == 'INFO_REQUESTED') {
      bannerColor = Colors.blue;
      title = 'Onboarding Required';
      subtitle = notes ?? 'Admin needs more details from you. Tap "Fix Now" to update.';
      icon = Icons.info_outline;
      showButton = true;
    } else if (status == 'NOT_SUBMITTED') {
      bannerColor = AppTheme.primaryColor;
      title = 'Onboarding Required';
      subtitle = 'Complete your profile to start quoting on shipments.';
      icon = Icons.assignment_late_outlined;
      showButton = true;
    }

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bannerColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: bannerColor.withOpacity(0.3)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Icon(icon, color: bannerColor, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: bannerColor, fontSize: 15)),
                const SizedBox(height: 4),
                Text(
                  subtitle, 
                  style: TextStyle(
                    fontSize: 13, 
                    color: bannerColor.withOpacity(0.9),
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
          if (showButton) ...[
            const SizedBox(width: 8),
            TextButton(
              onPressed: () => context.push('/agent-onboarding'),
              style: TextButton.styleFrom(
                backgroundColor: bannerColor,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text('Fix Now', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ),
          ],
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final user = context.select((AuthBloc bloc) => bloc.state.user);

    // Theme-aware colors
    final bgColor = theme.scaffoldBackgroundColor;
    final textColor = theme.colorScheme.onSurface;
    final subtitleColor = theme.colorScheme.onSurface.withOpacity(0.6);
    final primaryColor = theme.colorScheme.primary;

    return Scaffold(
      backgroundColor: bgColor,
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          // Index 0: Home (Requests, Active & Delivered)
          DefaultTabController(
            length: 3,
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  _buildHeader(context, user),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _SliverTabBarDelegate(
                      TabBar(
                        indicatorColor: primaryColor,
                        labelColor: textColor,
                        unselectedLabelColor: subtitleColor,
                        dividerColor: Colors.transparent,
                        tabs: [
                          Tab(text: AppLocalizations.of(context)!.requested),
                          Tab(text: AppLocalizations.of(context)!.active),
                          Tab(text: AppLocalizations.of(context)!.delivered),
                        ],
                      ),
                      color: theme.colorScheme.surface,
                    ),
                  ),
                ];
              },
              body: TabBarView(
                children: [
                  _ShipmentList(filter: (s) => [
                    'REQUESTED',
                    'PENDING_AGENTS',
                    'BIDDING_ACTIVE',
                    'QUOTED'
                  ].contains(s.status)),
                  _ShipmentList(filter: (s) => [
                      'QUOTATION_ACCEPTED',
                      'PAYMENT_PENDING',
                      'BOOKED',
                      'PICKED_UP',
                      'RECEIVED_AT_WAREHOUSE',
                      'LEAVING_ORIGIN_COUNTRY',
                      'IN_TRANSIT',
                      'IN_CUSTOMS',
                      'CUSTOMS_CLEARED',
                      'REACHED_DESTINATION_COUNTRY',
                      'ARRIVED_AT_DESTINATION',
                      'OUT_FOR_DELIVERY',
                      'READY_FOR_PICKUP',
                      'DELAYED'
                  ].contains(s.status)),
                  _ShipmentList(filter: (s) => ['DELIVERED', 'CANCELLED'].contains(s.status)),
                ],
              ),
            ),
          ),

          // Index 1: Chat
          ChatListScreen(),

          // Index 2: Finance
          const AgentFinanceScreen(),

          // Index 3: Profile
          const ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: theme.colorScheme.surface,
        selectedItemColor: primaryColor,
        unselectedItemColor: subtitleColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: AppLocalizations.of(context)!.home),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: AppLocalizations.of(context)!.chat),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: AppLocalizations.of(context)!.finance),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: AppLocalizations.of(context)!.profile),
        ],
        onTap: (index) {
           if (user?.kycStatus != 'VERIFIED' && (index == 1 || index == 2)) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(AppLocalizations.of(context)!.verificationRequiredForThisFeature)));
              return;
           }
           setState(() {
             _selectedIndex = index;
           });
        },
      ),
    );
  }

  Widget _buildHeader(BuildContext context, UserEntity? user) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        final theme = Theme.of(context);
        final colors = theme.extension<AppColorsExtension>();
        final textColor = theme.colorScheme.onSurface;
        final subtitleColor = theme.colorScheme.onSurface.withOpacity(0.6);
        final bgColor = theme.scaffoldBackgroundColor;

        return SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 60, 20, 24),
            decoration: BoxDecoration(
              color: bgColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                            AppLocalizations.of(context)!.helloWithName(_getDisplayName(user)),
                            style: theme.textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: textColor,
                            ),
                          ),
                          Text(AppLocalizations.of(context)!.agentPortal, style: TextStyle(color: subtitleColor)),
                       ],
                     ),
                     Row(
                       children: [
                         IconButton(
                           icon: Icon(Icons.refresh, color: subtitleColor),
                           tooltip: AppLocalizations.of(context)!.refresh,
                           onPressed: () {
                             context.read<AuthBloc>().add(UserRefreshRequested());
                             context.read<ShipmentListBloc>().add(const LoadShipments());
                             context.read<DashboardBloc>().add(LoadDashboardStats());
                             ScaffoldMessenger.of(context).showSnackBar(
                               SnackBar(
                                 content: Text('Refreshing data...'),
                                 duration: const Duration(seconds: 1),
                               ),
                             );
                           },
                         ),

                       ],
                     )
                  ],
                ),
                const SizedBox(height: 24),
                if (user?.kycStatus != 'VERIFIED') _buildKycBanner(context, user),
                // Earnings Card
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: theme.brightness == Brightness.light ? Colors.white : theme.colorScheme.surface,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: theme.brightness == Brightness.light ? [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ] : null,
                    border: Border.all(color: theme.colorScheme.outline.withOpacity(theme.brightness == Brightness.light ? 0.1 : 0.2)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppLocalizations.of(context)!.totalEarnings, style: TextStyle(color: subtitleColor)),
                          const SizedBox(height: 4),
                          Text(
                            state.totalEarnings,
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.15),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.attach_money, color: Colors.green, size: 28),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _ShipmentList extends StatelessWidget {
  final bool Function(ShipmentEntity) filter;

  const _ShipmentList({required this.filter});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textColor = theme.colorScheme.onSurface;
    final subtitleColor = theme.colorScheme.onSurface.withOpacity(0.6);

    return RefreshIndicator(
        onRefresh: () async {
           context.read<ShipmentListBloc>().add(const LoadShipments());
           context.read<DashboardBloc>().add(LoadDashboardStats());
        },
        child: BlocBuilder<ShipmentListBloc, ShipmentListState>(
          builder: (context, state) {
            if (state.status == ShipmentListStatus.loading && state.shipments.isEmpty) {
               return const Center(child: CircularProgressIndicator());
            }
            if (state.status == ShipmentListStatus.failure) {
              return OfflineErrorWidget(
                errorMessage: state.errorMessage ?? 'An error occurred',
                onRetry: () {
                  context.read<ShipmentListBloc>().add(const LoadShipments());
                  context.read<DashboardBloc>().add(LoadDashboardStats());
                },
              );
            }

            final filteredShipments = state.shipments.where(filter).toList();

            if (filteredShipments.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.inbox, size: 64, color: subtitleColor.withOpacity(0.4)),
                    const SizedBox(height: 16),
                    Text('No shipments found', style: TextStyle(color: textColor)),
                  ],
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
                  child: _AgentShipmentCard(shipment: shipment),
                );
              },
            );
          },
        ),
    );
  }
}

class _AgentShipmentCard extends StatelessWidget {
  final ShipmentEntity shipment;

  const _AgentShipmentCard({required this.shipment});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.extension<AppColorsExtension>();
    final textColor = theme.colorScheme.onSurface;
    final subtitleColor = theme.colorScheme.onSurface.withOpacity(0.6);
    final primaryColor = theme.colorScheme.primary;

    Color statusColor;
    switch (shipment.status.toUpperCase()) {
      case 'DELIVERED': statusColor = colors?.success ?? Colors.green; break;
      case 'IN_TRANSIT': statusColor = colors?.neonCyan ?? Colors.blue; break;
      case 'BOOKED': statusColor = colors?.warning ?? Colors.orange; break;
      case 'READY_FOR_PICKUP': statusColor = Colors.teal; break;
      case 'PICKED_UP': statusColor = Colors.cyan; break;
      case 'DELAYED': statusColor = Colors.red; break;
      case 'QUOTATION_ACCEPTED':
      case 'ACCEPTED': statusColor = Colors.indigo; break;
      case 'PAYMENT_PENDING': statusColor = Colors.deepOrange; break;
      default: statusColor = Colors.grey;
    }

    return Hero(
      tag: 'agent-shipment-${shipment.id}',
      child: AnimatedScaleButton(
        onPressed: () => context.push('/shipment-details', extra: shipment),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: theme.colorScheme.outline.withOpacity(0.2)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      color: statusColor.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: statusColor.withOpacity(0.5)),
                    ),
                    child: Text(
                      _getLocalizedStatus(context, shipment.status).toUpperCase(),
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
                      color: subtitleColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  _buildLocationDot(primaryColor),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      shipment.originAddress,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: textColor, fontSize: 16),
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
                      color: theme.colorScheme.outline.withOpacity(0.3),
                      width: 1,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  _buildLocationDot(colors?.neonPurple ?? theme.colorScheme.secondary),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      shipment.destinationAddress,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: textColor, fontSize: 16),
                    ),
                  ),
                ],
              ),
              if (!['DELIVERED', 'CANCELLED', 'REQUESTED', 'PENDING_AGENTS', 'BIDDING_ACTIVE', 'QUOTED'].contains(shipment.status.toUpperCase())) ...[
                 const SizedBox(height: 16),
                 Divider(color: theme.colorScheme.outline.withOpacity(0.2)),
                 const SizedBox(height: 8),
                 UpdateStatusButton(
                   shipment: shipment, 
                   onRefresh: () => context.read<ShipmentListBloc>().add(const LoadShipments()),
                 )
              ]
            ],
          ),
        ),
      ),
    );
  }

  String _getLocalizedStatus(BuildContext context, String status) {
    final l10n = AppLocalizations.of(context)!;
    switch (status.toUpperCase()) {
      case 'REQUESTED': return l10n.statusRequested;
      case 'PENDING_AGENTS': return l10n.statusPendingAgents;
      case 'BIDDING_ACTIVE': return l10n.statusBiddingActive;
      case 'QUOTED': return l10n.statusQuoted;
      case 'QUOTATION_ACCEPTED': return 'Quotation Accepted';
      case 'PAYMENT_PENDING': return 'Payment Pending';
      case 'ACCEPTED': return l10n.statusAccepted;
      case 'BOOKED': return l10n.statusBooked;
      case 'READY_FOR_PICKUP': return l10n.readyForPickup;
      case 'PICKED_UP': return 'Picked Up';
      case 'RECEIVED_AT_WAREHOUSE': return 'Received at Warehouse';
      case 'LEAVING_ORIGIN_COUNTRY': return 'Leaving Origin Country';
      case 'IN_TRANSIT': return l10n.statusInTransit;
      case 'IN_CUSTOMS': return l10n.inCustoms;
      case 'CUSTOMS_CLEARED': return l10n.customsCleared;
      case 'REACHED_DESTINATION_COUNTRY': return 'Reached Destination Country';
      case 'ARRIVED_AT_DESTINATION': return l10n.arrivedAtDestination;
      case 'OUT_FOR_DELIVERY': return l10n.statusOutForDelivery;
      case 'DELIVERED': return l10n.statusDelivered;
      case 'DELAYED': return l10n.delayed;
      case 'CANCELLED': return l10n.statusCancelled;
      default: return status.replaceAll('_', ' ');
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
          BoxShadow(color: color.withOpacity(0.4), blurRadius: 6, spreadRadius: 1),
        ],
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
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: _color,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverTabBarDelegate oldDelegate) => false;
}
