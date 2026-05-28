import 'package:customer_nzubia_global/features/shipment/domain/entities/shipment_event_entity.dart';

class ShipmentEventModel extends ShipmentEventEntity {
  const ShipmentEventModel({
    required super.status,
    required super.timestamp,
    super.title,
    required super.location,
    required super.description,
    required super.actor,
    super.imageUrls,
  });

  factory ShipmentEventModel.fromJson(Map<String, dynamic> json) {
    return ShipmentEventModel(
      status: json['status'] ?? '',
      timestamp: json['timestamp'] != null
          ? DateTime.parse(json['timestamp'])
          : DateTime.now(),
      title: json['title'],
      location: json['location'] ?? '',
      description: json['description'] ?? '',
      actor: json['actor'] ?? 'System',
      imageUrls: json['image_urls'] != null ? List<String>.from(json['image_urls']) : null,
    );
  }
}
