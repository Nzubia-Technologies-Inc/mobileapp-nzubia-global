import 'package:equatable/equatable.dart';

class TrackingEventEntity extends Equatable {
  final String id;
  final String title;
  final String description;
  final String location;
  final DateTime timestamp;
  final bool isCompleted;

  const TrackingEventEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.location,
    required this.timestamp,
    required this.isCompleted,
  });

  @override
  List<Object?> get props => [id, title, description, location, timestamp, isCompleted];
}

class TrackingEntity extends Equatable {
  final String shipmentId;
  final String currentStatus;
  final double progress; // 0.0 to 1.0
  final DateTime estimatedDelivery;
  final List<TrackingEventEntity> events;

  const TrackingEntity({
    required this.shipmentId,
    required this.currentStatus,
    required this.progress,
    required this.estimatedDelivery,
    required this.events,
  });

  @override
  List<Object?> get props => [shipmentId, currentStatus, progress, estimatedDelivery, events];
}
