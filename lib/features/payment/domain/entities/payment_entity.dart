import 'package:equatable/equatable.dart';
import 'package:customer_nzubia_global/features/shipment/domain/entities/shipment_entity.dart';

class PaymentEntity extends Equatable {
  final String id;
  final double amount;
  final String currency;
  final String status;
  final DateTime createdAt;
  final ShipmentEntity? shipment;

  const PaymentEntity({
    required this.id,
    required this.amount,
    required this.currency,
    required this.status,
    required this.createdAt,
    this.shipment,
  });

  @override
  List<Object?> get props => [id, amount, currency, status, createdAt, shipment];
}
