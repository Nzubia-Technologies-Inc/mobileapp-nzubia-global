import 'package:customer_nzubia_global/features/payment/data/models/payment_model.dart';

abstract class PaymentRemoteDatasource {
  Future<String> createCheckoutSession({
    required String quoteId,
    required String successUrl,
    required String cancelUrl,
  });

  Future<List<PaymentModel>> getPayments();
  Future<Map<String, dynamic>> getAgentEarnings();
  Future<PaymentModel> syncPayment(String paymentId);
}
