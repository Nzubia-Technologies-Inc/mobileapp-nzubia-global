import 'package:equatable/equatable.dart';

class NotificationEntity extends Equatable {
  final String id;
  final String title;
  final String message;
  final String type; // 'SHIPMENT_REQUEST', 'QUOTE_RECEIVED', etc.
  final String relatedEntityId;
  final bool isRead;
  final DateTime createdAt;

  const NotificationEntity({
    required this.id,
    required this.title,
    required this.message,
    required this.type,
    required this.relatedEntityId,
    required this.isRead,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [id, title, message, type, relatedEntityId, isRead, createdAt];
}
