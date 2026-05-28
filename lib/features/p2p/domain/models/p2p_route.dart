import 'package:equatable/equatable.dart';
import 'package:customer_nzubia_global/features/p2p/domain/enums/p2p_enums.dart';
import 'package:customer_nzubia_global/features/p2p/domain/models/p2p_courier_profile.dart';

class P2pRoute extends Equatable {
  final String id;
  final String courierProfileId;
  final P2pCourierProfile? courierProfile;
  final String destinationCountry;
  final String destinationCity;
  final DateTime departureDate;
  final DateTime? returnDate;
  final String pickupOrigin;
  final double? pickupLatitude;
  final double? pickupLongitude;
  final double? currentLatitude;
  final double? currentLongitude;
  final double capacityKg;
  final List<ItemCategory> acceptedItemCategories;
  final String? routeNotes;
  final RouteStatus status;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const P2pRoute({
    required this.id,
    required this.courierProfileId,
    this.courierProfile,
    required this.destinationCountry,
    required this.destinationCity,
    required this.departureDate,
    this.returnDate,
    required this.pickupOrigin,
    this.pickupLatitude,
    this.pickupLongitude,
    this.currentLatitude,
    this.currentLongitude,
    required this.capacityKg,
    this.acceptedItemCategories = const [],
    this.routeNotes,
    required this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory P2pRoute.fromJson(Map<String, dynamic> json) {
    final rawCats = json['accepted_item_categories'] as List? ?? const [];
    return P2pRoute(
      id: json['id'] as String,
      courierProfileId: json['courier_profile_id'] as String,
      courierProfile: json['courier_profile'] is Map<String, dynamic>
          ? P2pCourierProfile.fromJson(
              json['courier_profile'] as Map<String, dynamic>,
            )
          : null,
      destinationCountry: json['destination_country'] as String,
      destinationCity: json['destination_city'] as String,
      departureDate: DateTime.parse(json['departure_date'] as String),
      returnDate: json['return_date'] != null
          ? DateTime.parse(json['return_date'] as String)
          : null,
      pickupOrigin: json['pickup_origin'] as String,
      pickupLatitude: (json['pickup_latitude'] as num?)?.toDouble(),
      pickupLongitude: (json['pickup_longitude'] as num?)?.toDouble(),
      currentLatitude: (json['current_latitude'] as num?)?.toDouble(),
      currentLongitude: (json['current_longitude'] as num?)?.toDouble(),
      capacityKg: (json['capacity_kg'] as num?)?.toDouble() ?? 0.0,
      acceptedItemCategories: rawCats
          .map((e) => ItemCategory.fromJson(e as String?))
          .toList(growable: false),
      routeNotes: json['route_notes'] as String?,
      status: RouteStatus.fromJson(json['status'] as String?),
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'] as String)
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'] as String)
          : null,
    );
  }

  @override
  List<Object?> get props => [
        id,
        courierProfileId,
        courierProfile,
        destinationCountry,
        destinationCity,
        departureDate,
        returnDate,
        pickupOrigin,
        pickupLatitude,
        pickupLongitude,
        currentLatitude,
        currentLongitude,
        capacityKg,
        acceptedItemCategories,
        routeNotes,
        status,
        createdAt,
        updatedAt,
      ];
}

/// One item from `/p2p/routes/feed` — a route paired with a relevance score.
class P2pRouteFeedItem extends Equatable {
  final P2pRoute route;
  final double score;

  const P2pRouteFeedItem({required this.route, required this.score});

  factory P2pRouteFeedItem.fromJson(Map<String, dynamic> json) {
    return P2pRouteFeedItem(
      route: P2pRoute.fromJson(json['route'] as Map<String, dynamic>),
      score: (json['score'] as num?)?.toDouble() ?? 0.0,
    );
  }

  @override
  List<Object?> get props => [route, score];
}
