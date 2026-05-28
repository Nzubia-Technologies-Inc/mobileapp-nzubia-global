import 'package:customer_nzubia_global/features/p2p/domain/models/p2p_route.dart';
import 'package:customer_nzubia_global/features/p2p/domain/enums/p2p_enums.dart';

abstract class P2pRouteRepository {
  /// Creates a new travel route for the authenticated courier.
  Future<P2pRoute> createRoute(Map<String, dynamic> routeData);

  /// Returns published routes (raw list, no scoring).
  Future<List<P2pRoute>> listRoutes({
    String? destinationCountry,
    String? destinationCity,
    double? originLat,
    double? originLng,
    double? radiusKm,
    String? departureDateFrom,
    String? departureDateTo,
    double? minCapacityKg,
    int limit = 20,
  });

  /// Returns the ranked marketplace feed (each route paired with a score).
  Future<List<P2pRouteFeedItem>> getRouteFeed({
    String? destinationCountry,
    String? destinationCity,
    double? originLat,
    double? originLng,
    double? radiusKm,
    String? departureDateFrom,
    String? departureDateTo,
    double? minCapacityKg,
  });

  /// Returns routes belonging to the authenticated courier.
  Future<List<P2pRoute>> listMyRoutes();

  /// Returns a single route by ID.
  Future<P2pRoute> getRoute(String routeId);

  /// Updates mutable fields of a route (capacity, dates, categories, notes).
  Future<P2pRoute> updateRoute(String routeId, Map<String, dynamic> updates);

  /// Transitions the route to a new status.
  Future<P2pRoute> updateRouteStatus(String routeId, RouteStatus newStatus);
}
