import 'package:equatable/equatable.dart';

class CargoItemEntity extends Equatable {
  final String id;
  final String description;
  final double length;
  final double width;
  final double height;
  final double weight;
  final String category;
  final bool isFragile;
  final bool isPerishable;
  final List<String> imageUrls;
  final List<String> documentIds; // New
  final int quantity;
  final String dimensionUnit;

  const CargoItemEntity({
    required this.id,
    required this.description,
    required this.length,
    required this.width,
    required this.height,
    required this.weight,
    required this.category,
    required this.isFragile,
    required this.isPerishable,
    required this.imageUrls,
    this.documentIds = const [],
    required this.quantity,
    this.dimensionUnit = 'cm',
  });

  CargoItemEntity copyWith({
    String? id,
    String? description,
    double? length,
    double? width,
    double? height,
    double? weight,
    String? category,
    bool? isFragile,
    bool? isPerishable,
    List<String>? imageUrls,
    List<String>? documentIds,
    int? quantity,
    String? dimensionUnit,
  }) {
    return CargoItemEntity(
      id: id ?? this.id,
      description: description ?? this.description,
      length: length ?? this.length,
      width: width ?? this.width,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      category: category ?? this.category,
      isFragile: isFragile ?? this.isFragile,
      isPerishable: isPerishable ?? this.isPerishable,
      imageUrls: imageUrls ?? this.imageUrls,
      documentIds: documentIds ?? this.documentIds,
      quantity: quantity ?? this.quantity,
      dimensionUnit: dimensionUnit ?? this.dimensionUnit,
    );
  }

  @override
  List<Object?> get props => [
    id, description, length, width, height, weight,
    category, isFragile, isPerishable, imageUrls, documentIds, quantity, dimensionUnit
  ];
}
