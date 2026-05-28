import 'package:equatable/equatable.dart';

class ShipmentEventEntity extends Equatable {
  final String status;
  final DateTime timestamp;
  final String? title;
  final String location;
  final String description;
  final String actor;
  final List<String>? imageUrls;

  const ShipmentEventEntity({
    required this.status,
    required this.timestamp,
    this.title,
    required this.location,
    required this.description,
    required this.actor,
    this.imageUrls,
  });

  @override
  List<Object?> get props => [status, timestamp, title, location, description, actor, imageUrls];
}
