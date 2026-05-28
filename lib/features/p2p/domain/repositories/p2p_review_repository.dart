import 'package:customer_nzubia_global/features/p2p/domain/models/p2p_review.dart';

abstract class P2pReviewRepository {
  /// Submits a review for a completed P2P shipment. The reviewer is taken
  /// from the auth token; you only supply the reviewed user, shipment, and
  /// star rating.
  Future<P2pReview> createReview({
    required String reviewedUserId,
    required String shipmentRequestId,
    required int rating,
    String? comment,
    Map<String, dynamic>? trustFlags,
  });

  /// Returns all reviews for a specific courier profile.
  Future<List<P2pReview>> getCourierReviews(String courierId);

  /// Lists reviews with arbitrary filters (any combination is allowed).
  Future<List<P2pReview>> listReviews({
    String? reviewedUserId,
    String? reviewerUserId,
    String? shipmentRequestId,
    int? minRating,
  });
}
