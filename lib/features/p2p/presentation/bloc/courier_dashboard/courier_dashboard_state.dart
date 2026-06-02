part of 'courier_dashboard_bloc.dart';

enum CourierDashboardStatus { initial, loading, success, failure }

class CourierDashboardState extends Equatable {
  final CourierDashboardStatus status;
  final P2pCourierProfile? profile;
  final P2pRoute? activeRoute;
  final List<P2pRoute> myRoutes;

  /// Direct requests from seekers that this courier needs to accept/decline.
  final List<P2pCourierRequest> pendingRequests;

  /// Shipments where this courier is the assigned carrier and the status is
  /// HANDOFF_PENDING, IN_TRANSIT, or DELIVERED.
  final List<P2pShipmentRequest> activeShipments;

  final String? errorMessage;

  const CourierDashboardState({
    this.status = CourierDashboardStatus.initial,
    this.profile,
    this.activeRoute,
    this.myRoutes = const [],
    this.pendingRequests = const [],
    this.activeShipments = const [],
    this.errorMessage,
  });

  CourierDashboardState copyWith({
    CourierDashboardStatus? status,
    P2pCourierProfile? profile,
    P2pRoute? activeRoute,
    List<P2pRoute>? myRoutes,
    List<P2pCourierRequest>? pendingRequests,
    List<P2pShipmentRequest>? activeShipments,
    String? errorMessage,
  }) {
    return CourierDashboardState(
      status: status ?? this.status,
      profile: profile ?? this.profile,
      activeRoute: activeRoute ?? this.activeRoute,
      myRoutes: myRoutes ?? this.myRoutes,
      pendingRequests: pendingRequests ?? this.pendingRequests,
      activeShipments: activeShipments ?? this.activeShipments,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        status,
        profile,
        activeRoute,
        myRoutes,
        pendingRequests,
        activeShipments,
        errorMessage,
      ];
}
