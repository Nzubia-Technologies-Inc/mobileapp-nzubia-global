import 'package:equatable/equatable.dart';

class ReviewEntity extends Equatable {
  final String id;
  final double rating;
  final String? comment;
  final String authorId;
  final DateTime createdAt;

  const ReviewEntity({
    required this.id,
    required this.rating,
    this.comment,
    required this.authorId,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [id, rating, comment, authorId, createdAt];
}
