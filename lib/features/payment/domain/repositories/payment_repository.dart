import 'package:customer_nzubia_global/features/payment/domain/entities/payment_entity.dart';

abstract class PaymentRepository {
  Future<String> createCheckoutSession({
    required String quoteId,
    required String successUrl,
    required String cancelUrl,

  });
  Future<List<PaymentEntity>> getPayments();
  Future<Map<String, dynamic>> getAgentEarnings();
  Future<PaymentEntity> syncPayment(String paymentId);
}
