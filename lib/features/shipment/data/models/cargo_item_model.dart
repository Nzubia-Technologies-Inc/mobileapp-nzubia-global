import 'package:customer_nzubia_global/features/shipment/domain/entities/cargo_item_entity.dart';

class CargoItemModel extends CargoItemEntity {
  const CargoItemModel({
    required super.id,
    required super.description,
    required super.length,
    required super.width,
    required super.height,
    required super.weight,
    required super.category,
    required super.isFragile,
    required super.isPerishable,
    required super.imageUrls,
    super.documentIds,
    required super.quantity,
    super.dimensionUnit,
  });

  factory CargoItemModel.fromJson(Map<String, dynamic> json) {
    double safeDouble(dynamic value) {
      if (value == null) return 0.0;
      if (value is num) return value.toDouble();
      if (value is String) return double.tryParse(value) ?? 0.0;
      return 0.0;
    }

    // dimensions may be nested under a 'dimensions' key (API response) or flat (local)
    final dims = json['dimensions'] is Map ? json['dimensions'] as Map : null;
    return CargoItemModel(
      id: json['id'] ?? '',
      description: json['description'] ?? '',
      length: safeDouble(dims?['length'] ?? json['length']),
      width: safeDouble(dims?['width'] ?? json['width']),
      height: safeDouble(dims?['height'] ?? json['height']),
      weight: safeDouble(json['weight']),
      category: json['category'] ?? 'GENERAL',
      isFragile: json['is_fragile'] ?? false,
      isPerishable: json['is_perishable'] ?? false,
      imageUrls: (json['images'] as List<dynamic>?)?.map((e) => e.toString()).toList() ?? [],
      documentIds: (json['document_ids'] as List<dynamic>?)?.map((e) => e.toString()).toList() ?? [],
      quantity: json['quantity'] is String ? int.tryParse(json['quantity']) ?? 1 : (json['quantity'] ?? 1),
      dimensionUnit: (dims?['unit'] ?? json['dimension_unit'] ?? 'cm').toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'length': length,
      'width': width,
      'height': height,
      'weight': weight,
      'category': category,
      'is_fragile': isFragile,
      'is_perishable': isPerishable,
      'images': imageUrls,
      'document_ids': documentIds,
      'quantity': quantity,
    };
  }
}
