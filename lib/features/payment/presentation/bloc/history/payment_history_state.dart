import 'package:equatable/equatable.dart';
import 'package:customer_nzubia_global/features/payment/domain/entities/payment_entity.dart';

enum PaymentHistoryStatus { initial, loading, success, failure }

class PaymentHistoryState extends Equatable {
  final PaymentHistoryStatus status;
  final List<PaymentEntity> payments;
  final String? errorMessage;

  const PaymentHistoryState({
    this.status = PaymentHistoryStatus.initial,
    this.payments = const [],
    this.errorMessage,
  });

  @override
  List<Object?> get props => [status, payments, errorMessage];
}
