abstract class PaymentService {
  Future<void> initPaymentSheet({required String amount, required String currency});
  Future<void> presentPaymentSheet();
}
