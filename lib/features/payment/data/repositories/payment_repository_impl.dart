import 'package:customer_nzubia_global/features/payment/data/datasources/payment_remote_datasource.dart';
import 'package:customer_nzubia_global/features/payment/domain/entities/payment_entity.dart';
import 'package:customer_nzubia_global/features/payment/domain/repositories/payment_repository.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  final PaymentRemoteDatasource remoteDatasource;

  PaymentRepositoryImpl(this.remoteDatasource);

  @override
  Future<String> createCheckoutSession({
    required String quoteId,
    required String successUrl,
    required String cancelUrl,
  }) async {
    return await remoteDatasource.createCheckoutSession(
      quoteId: quoteId,
      successUrl: successUrl,
      cancelUrl: cancelUrl,
    );
  }

  @override
  Future<List<PaymentEntity>> getPayments() async {
    return await remoteDatasource.getPayments();
  }

  @override
  Future<Map<String, dynamic>> getAgentEarnings() async {
    return await remoteDatasource.getAgentEarnings();
  }

  @override
  Future<PaymentEntity> syncPayment(String paymentId) async {
    return await remoteDatasource.syncPayment(paymentId);
  }
}
