import 'package:customer_nzubia_global/features/shipment/domain/entities/review_entity.dart';

class ReviewModel extends ReviewEntity {
  const ReviewModel({
    required super.id,
    required super.rating,
    super.comment,
    required super.authorId,
    required super.createdAt,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      id: json['id'],
      rating: (json['rating'] as num).toDouble(),
      comment: json['comment'],
      authorId: json['author'] != null ? json['author']['id'] ?? '' : '',
      createdAt: DateTime.parse(json['created_at']),
    );
  }
}
