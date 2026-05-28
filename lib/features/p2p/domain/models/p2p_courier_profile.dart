import 'package:equatable/equatable.dart';
import 'package:customer_nzubia_global/features/p2p/domain/enums/p2p_enums.dart';

/// Minimal user summary embedded in P2P responses by the backend mapper.
class P2pUserSummary extends Equatable {
  final String id;
  final String? email;
  final String? fullName;

  const P2pUserSummary({required this.id, this.email, this.fullName});

  factory P2pUserSummary.fromJson(Map<String, dynamic> json) {
    return P2pUserSummary(
      id: json['id'] as String,
      email: json['email'] as String?,
      fullName: json['full_name'] as String?,
    );
  }

  @override
  List<Object?> get props => [id, email, fullName];
}

class P2pCourierProfile extends Equatable {
  final String id;
  final String userId;
  final P2pUserSummary? user;
  final CourierVerificationState verificationState;
  final double rating;
  final bool isActive;
  final double? homeLatitude;
  final double? homeLongitude;
  final double? serviceRadiusKm;
  final List<ItemCategory> acceptedCategories;
  final bool payoutReady;
  final String? reputationSummary;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const P2pCourierProfile({
    required this.id,
    required this.userId,
    this.user,
    required this.verificationState,
    required this.rating,
    required this.isActive,
    this.homeLatitude,
    this.homeLongitude,
    this.serviceRadiusKm,
    this.acceptedCategories = const [],
    required this.payoutReady,
    this.reputationSummary,
    this.createdAt,
    this.updatedAt,
  });

  factory P2pCourierProfile.fromJson(Map<String, dynamic> json) {
    final rawCats = json['accepted_categories'] as List? ?? const [];
    return P2pCourierProfile(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      user: json['user'] is Map<String, dynamic>
          ? P2pUserSummary.fromJson(json['user'] as Map<String, dynamic>)
          : null,
      verificationState:
          CourierVerificationState.fromJson(json['verification_state'] as String?),
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      isActive: json['is_active'] as bool? ?? false,
      homeLatitude: (json['home_latitude'] as num?)?.toDouble(),
      homeLongitude: (json['home_longitude'] as num?)?.toDouble(),
      serviceRadiusKm: (json['service_radius_km'] as num?)?.toDouble(),
      acceptedCategories: rawCats
          .map((e) => ItemCategory.fromJson(e as String?))
          .toList(growable: false),
      payoutReady: json['payout_ready'] as bool? ?? false,
      reputationSummary: json['reputation_summary'] as String?,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'] as String)
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'] as String)
          : null,
    );
  }

  /// Convenience: human-readable display name (full name when available).
  String get displayName => user?.fullName ?? user?.email ?? 'Courier';

  @override
  List<Object?> get props => [
        id,
        userId,
        user,
        verificationState,
        rating,
        isActive,
        homeLatitude,
        homeLongitude,
        serviceRadiusKm,
        acceptedCategories,
        payoutReady,
        reputationSummary,
        createdAt,
        updatedAt,
      ];
}

/// Lightweight status response from `/p2p/couriers/me/status`.
class P2pCourierStatus extends Equatable {
  final CourierVerificationState verificationState;
  final bool isActive;
  final bool payoutReady;

  const P2pCourierStatus({
    required this.verificationState,
    required this.isActive,
    required this.payoutReady,
  });

  factory P2pCourierStatus.fromJson(Map<String, dynamic> json) {
    return P2pCourierStatus(
      verificationState:
          CourierVerificationState.fromJson(json['verification_state'] as String?),
      isActive: json['is_active'] as bool? ?? false,
      payoutReady: json['payout_ready'] as bool? ?? false,
    );
  }

  @override
  List<Object?> get props => [verificationState, isActive, payoutReady];
}

/// Aggregated reputation response from `/p2p/couriers/:id/reputation`.
class P2pCourierReputation extends Equatable {
  final double averageRating;
  final int reviewCount;
  final List<Map<String, dynamic>> recentReviews;

  const P2pCourierReputation({
    required this.averageRating,
    required this.reviewCount,
    required this.recentReviews,
  });

  factory P2pCourierReputation.fromJson(Map<String, dynamic> json) {
    final raw = json['recent_reviews'] as List? ?? const [];
    return P2pCourierReputation(
      averageRating: (json['average_rating'] as num?)?.toDouble() ?? 0.0,
      reviewCount: (json['review_count'] as num?)?.toInt() ?? 0,
      recentReviews:
          raw.map((e) => Map<String, dynamic>.from(e as Map)).toList(),
    );
  }

  @override
  List<Object?> get props => [averageRating, reviewCount, recentReviews];
}
