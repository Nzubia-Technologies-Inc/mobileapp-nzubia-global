import 'package:equatable/equatable.dart';

class P2pReview extends Equatable {
  final String id;
  final String reviewerUserId;
  final String reviewedUserId;
  final String shipmentRequestId;
  final int rating; // 1-5
  final String? comment;
  final Map<String, dynamic>? trustFlags;
  final DateTime? createdAt;

  const P2pReview({
    required this.id,
    required this.reviewerUserId,
    required this.reviewedUserId,
    required this.shipmentRequestId,
    required this.rating,
    this.comment,
    this.trustFlags,
    this.createdAt,
  });

  factory P2pReview.fromJson(Map<String, dynamic> json) {
    return P2pReview(
      id: json['id'] as String,
      reviewerUserId: json['reviewer_user_id'] as String,
      reviewedUserId: json['reviewed_user_id'] as String,
      shipmentRequestId: json['shipment_request_id'] as String,
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String?,
      trustFlags: json['trust_flags'] is Map<String, dynamic>
          ? Map<String, dynamic>.from(json['trust_flags'] as Map)
          : null,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'] as String)
          : null,
    );
  }

  @override
  List<Object?> get props => [
        id,
        reviewerUserId,
        reviewedUserId,
        shipmentRequestId,
        rating,
        comment,
        trustFlags,
        createdAt,
      ];
}
