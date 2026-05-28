import 'package:customer_nzubia_global/features/shipment/domain/entities/quote_entity.dart';

class QuoteModel extends QuoteEntity {
  const QuoteModel({
    required super.id,
    required super.shipmentId,
    required super.agentName,
    required super.agentId,
    required super.amount,
    required super.currency,
    required super.estimatedDeliveryData,
    required super.rating,
    required super.reviewCount,
    required super.status,
    required super.createdAt,
    required super.agentProfileUrl,
    required super.shippingMethod,
    required super.notes,
    super.payoutMethod,
    super.insuranceIncluded,
    super.insuranceType,
    super.insuranceName,
    super.breakdown,
  });

  factory QuoteModel.fromJson(Map<String, dynamic> json) {
    final agentData = json['agent'];
    final businessName = agentData?['business_name'];
    final fullName = agentData?['full_name'] ?? json['agentName'];
    final displayName = (businessName != null && businessName.isNotEmpty)
        ? businessName
        : (fullName ?? 'System Quote');

    final rawAmount = json['quoteAmount'] ?? json['amount'];
    double amount = 0.0;
    if (rawAmount is num) {
      amount = rawAmount.toDouble();
    } else if (rawAmount is String) {
      amount = double.tryParse(rawAmount) ?? 0.0;
    }

    // Check if insurance is included from breakdown or insurance_type
    final breakdown = json['breakdown'];
    final insuranceFee = (breakdown is Map) ? (breakdown['insurance_fee'] ?? 0) : 0;
    final hasInsurance = (insuranceFee is num && insuranceFee > 0) ||
        (json['insurance_type'] != null && json['insurance_type'] != 'NONE');

    return QuoteModel(
      id: json['id'] ?? '',
      shipmentId: json['shipment']?['id'] ?? json['shipmentId'] ?? '',
      agentName: displayName,
      agentId: agentData?['id'] ?? json['agentId'] ?? 'system',
      amount: amount,
      currency: json['currency'] ?? 'USD',
      estimatedDeliveryData: (json['estimated_delivery_date'] ?? json['delivery_date']) != null
          ? DateTime.tryParse(json['estimated_delivery_date'] ?? json['delivery_date'] ?? '') ?? DateTime.now().add(const Duration(days: 7))
          : DateTime.now().add(const Duration(days: 7)),
      rating: (agentData?['agentProfile']?['rating'] is String)
          ? double.tryParse(agentData?['agentProfile']?['rating']) ?? 0.0
          : (agentData?['agentProfile']?['rating'] as num?)?.toDouble() ?? 0.0,
      reviewCount: (agentData?['agentProfile']?['rating_count'] is String)
          ? int.tryParse(agentData?['agentProfile']?['rating_count']) ?? 0
          : (agentData?['agentProfile']?['rating_count'] as num?)?.toInt() ?? 0,
      status: json['status'] ?? 'PENDING',
      createdAt: json['created_at'] != null
          ? DateTime.tryParse(json['created_at']) ?? DateTime.now()
          : DateTime.now(),
      agentProfileUrl: agentData?['profile_image_url'] ?? agentData?['profile_picture_url'] ?? json['agentProfileUrl'],
      shippingMethod: json['shipping_method'] ?? json['method'] ?? 'AIR',
      payoutMethod: json['payout_method'],
      notes: json['notes'] ?? '',
      insuranceIncluded: hasInsurance,
      insuranceType: json['insurance_type'],
      insuranceName: json['insurance_name'],
      breakdown: (json['breakdown'] is Map) ? Map<String, dynamic>.from(json['breakdown']) : null,
    );
  }
}
