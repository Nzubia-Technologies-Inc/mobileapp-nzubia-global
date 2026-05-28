
import 'package:equatable/equatable.dart';

enum DashboardStatus { initial, loading, loaded, error }

class DashboardState extends Equatable {
  final DashboardStatus status;
  final int pendingQuotesCount;
  final int activeShipmentsCount;
  final String totalEarnings; // Keeping as string for now
  final String? errorMessage;

  const DashboardState({
    this.status = DashboardStatus.initial,
    this.pendingQuotesCount = 0,
    this.activeShipmentsCount = 0,
    this.totalEarnings = '\$0.00',
    this.errorMessage,
  });

  DashboardState copyWith({
    DashboardStatus? status,
    int? pendingQuotesCount,
    int? activeShipmentsCount,
    String? totalEarnings,
    String? errorMessage,
  }) {
    return DashboardState(
      status: status ?? this.status,
      pendingQuotesCount: pendingQuotesCount ?? this.pendingQuotesCount,
      activeShipmentsCount: activeShipmentsCount ?? this.activeShipmentsCount,
      totalEarnings: totalEarnings ?? this.totalEarnings,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, pendingQuotesCount, activeShipmentsCount, totalEarnings, errorMessage];
}
