import 'package:customer_nzubia_global/features/payment/domain/entities/payment_entity.dart';
import 'package:customer_nzubia_global/features/shipment/data/models/shipment_model.dart';

class PaymentModel extends PaymentEntity {
  const PaymentModel({
    required super.id,
    required super.amount,
    required super.currency,
    required super.status,
    required super.createdAt,
    super.shipment,
  });

  factory PaymentModel.fromJson(Map<String, dynamic> json) {
    return PaymentModel(
      id: json['id'] ?? '',
      amount: double.tryParse(json['amount']?.toString() ?? '0') ?? 0.0,
      currency: json['currency'] ?? 'USD',
      status: json['status'] ?? 'PENDING',
      createdAt: DateTime.tryParse(json['created_at'] ?? '') ?? DateTime.now(),
      shipment: json['shipment'] != null ? ShipmentModel.fromJson(json['shipment']) : null,
    );
  }
}
