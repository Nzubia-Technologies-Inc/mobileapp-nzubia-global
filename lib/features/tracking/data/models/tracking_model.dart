import 'package:customer_nzubia_global/features/tracking/domain/entities/tracking_entity.dart';

class TrackingModel extends TrackingEntity {
  const TrackingModel({
    required super.shipmentId,
    required super.currentStatus,
    required super.progress,
    required super.estimatedDelivery,
    required super.events,
  });

  factory TrackingModel.fromJson(Map<String, dynamic> json) {
    return TrackingModel(
      shipmentId: json['tracking_number'] ?? '',
      currentStatus: json['status'] ?? 'Unknown',
      progress: (json['progress'] as num?)?.toDouble() ?? 0.5, // Default progress if not provided
      estimatedDelivery: json['estimated_delivery'] != null 
          ? DateTime.tryParse(json['estimated_delivery']) ?? DateTime.now().add(const Duration(days: 7))
          : DateTime.now().add(const Duration(days: 7)),
      events: (json['updates'] as List<dynamic>?)
              ?.map((e) => TrackingEventModel.fromJson(e))
              .toList() ??
          [],
    );
  }
}

class TrackingEventModel extends TrackingEventEntity {
  const TrackingEventModel({
    required super.id,
    required super.title,
    required super.description,
    required super.location,
    required super.timestamp,
    required super.isCompleted,
  });

  factory TrackingEventModel.fromJson(Map<String, dynamic> json) {
    return TrackingEventModel(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      location: json['location'] ?? '',
      timestamp: json['timestamp'] != null 
          ? DateTime.tryParse(json['timestamp']) ?? DateTime.now() 
          : DateTime.now(),
      isCompleted: true, // If it's in the updates/history list, it's completed
    );
  }
}
