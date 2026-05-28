import 'package:equatable/equatable.dart';

class QuoteEntity extends Equatable {
  final String id;
  final String shipmentId;
  final String agentName;
  final String agentId;
  final double amount;
  final String currency;
  final DateTime estimatedDeliveryData;
  final double rating;
  final int reviewCount;
  final String status;
  final DateTime createdAt;
  final String? agentProfileUrl;
  final String? shippingMethod;
  final String? payoutMethod;
  final bool insuranceIncluded;
  final String? insuranceType;
  final String? insuranceName;
  final String notes;
  final Map<String, dynamic>? breakdown;

  const QuoteEntity({
    required this.id,
    required this.shipmentId,
    required this.agentName,
    required this.agentId,
    required this.amount,
    required this.currency,
    required this.estimatedDeliveryData,
    required this.rating,
    required this.reviewCount,
    required this.status,
    required this.createdAt,
    this.agentProfileUrl,
    this.shippingMethod,
    this.payoutMethod,
    this.insuranceIncluded = false,
    this.insuranceType,
    this.insuranceName,
    this.notes = '',
    this.breakdown,
  });

  DateTime get estimatedDeliveryDate => estimatedDeliveryData;

  @override
  List<Object?> get props => [
        id,
        shipmentId,
        agentName,
        agentId,
        amount,
        currency,
        estimatedDeliveryData,
        rating,
        reviewCount,
        agentProfileUrl,
        status,
        createdAt,
        shippingMethod,
        payoutMethod,
        insuranceIncluded,
        insuranceType,
        insuranceName,
        notes,
        breakdown,
      ];
}
