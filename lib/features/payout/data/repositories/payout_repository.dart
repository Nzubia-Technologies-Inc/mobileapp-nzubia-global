import 'package:customer_nzubia_global/core/network/dio_client.dart';

abstract class PayoutRepository {
  Future<Map<String, dynamic>> createRecipient();
  Future<String> getOnboardingLink(String returnUrl);
  Future<Map<String, dynamic>> getPayoutStatus();
  Future<List<dynamic>> getPayoutHistory();
}

class PayoutRepositoryImpl implements PayoutRepository {
  final DioClient _dioClient;

  PayoutRepositoryImpl(this._dioClient);

  @override
  Future<Map<String, dynamic>> createRecipient() async {
    try {
      final response = await _dioClient.dio.post('/users/payout/create-recipient');
      return response.data;
    } catch (e) {
      throw Exception('Failed to create recipient: $e');
    }
  }

  @override
  Future<String> getOnboardingLink(String returnUrl) async {
    try {
      final response = await _dioClient.dio.get(
        '/users/payout/onboarding-link',
        queryParameters: {'returnUrl': returnUrl}
      );
      return response.data['url'];
    } catch (e) {
      throw Exception('Failed to get onboarding link: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> getPayoutStatus() async {
    try {
      final response = await _dioClient.dio.get('/users/payout/status');
      return response.data;
    } catch (e) {
      throw Exception('Failed to get payout status: $e');
    }
  }

  @override
  Future<List<dynamic>> getPayoutHistory() async {
    try {
      final response = await _dioClient.dio.get('/users/payout/history');
      return response.data['data'] ?? [];
    } catch (e) {
      throw Exception('Failed to get payout history: $e');
    }
  }
}
