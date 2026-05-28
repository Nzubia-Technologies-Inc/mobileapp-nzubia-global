import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:customer_nzubia_global/core/constants/api_constants.dart';

class AuthInterceptor extends Interceptor {
  final FlutterSecureStorage _storage;

  AuthInterceptor(this._storage);

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await _storage.read(key: 'accessToken');
    if (token != null) {
      print('AuthInterceptor: Attaching token ${token.substring(0, 5)}...');
      options.headers['Authorization'] = 'Bearer $token';
    } else {
      // If running locally, allow a DEV_ACCESS_TOKEN to be provided via --dart-define
      final devToken = ApiConstants.devAccessToken;
      if (devToken.isNotEmpty) {
        print('AuthInterceptor: Using DEV_ACCESS_TOKEN fallback...');
        options.headers['Authorization'] = 'Bearer $devToken';
      } else {
        print('AuthInterceptor: No token found in storage!');
      }
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Handle 401 Unauthorized (e.g., trigger logout)
    if (err.response?.statusCode == 401) {
      // Broadcast logout event or clear token
    }
    super.onError(err, handler);
  }
}
