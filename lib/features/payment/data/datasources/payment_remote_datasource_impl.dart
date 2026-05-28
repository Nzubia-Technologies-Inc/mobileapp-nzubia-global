import 'package:dio/dio.dart';
import 'package:customer_nzubia_global/core/error/exceptions.dart';
import 'package:customer_nzubia_global/core/network/dio_client.dart';
import 'package:customer_nzubia_global/features/payment/data/models/payment_model.dart';
import 'payment_remote_datasource.dart';

class PaymentRemoteDatasourceImpl implements PaymentRemoteDatasource {
  final DioClient dioClient;

  PaymentRemoteDatasourceImpl(this.dioClient);

  @override
  Future<String> createCheckoutSession({
    required String quoteId,
    required String successUrl,
    required String cancelUrl,
  }) async {
    try {
      final response = await dioClient.dio.post(
        '/payments/create-session',
        data: {
          'quoteId': quoteId,
          'successUrl': successUrl,
          'cancelUrl': cancelUrl,
        },
      );
      if (response.data != null && response.data['url'] != null) {
        return response.data['url'];
      }
      throw Exception('Create session returned no URL');
    } on DioException catch (e) {
      throw Exception(e.response?.data?['message'] ?? 'Failed to create payment session');
    }
  }

  @override
  Future<List<PaymentModel>> getPayments() async {
    try {
      final response = await dioClient.dio.get('/payments');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => PaymentModel.fromJson(json)).toList();
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<Map<String, dynamic>> getAgentEarnings() async {
    try {
      final response = await dioClient.dio.get('/transactions/agent/earnings');
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<PaymentModel> syncPayment(String paymentId) async {
    try {
      final response = await dioClient.dio.post(
        '/payments/sync',
        data: {'paymentId': paymentId},
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return PaymentModel.fromJson(response.data);
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
}
