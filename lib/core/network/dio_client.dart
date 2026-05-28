import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:customer_nzubia_global/core/constants/api_constants.dart';
import 'package:customer_nzubia_global/core/network/auth_interceptor.dart';
import 'package:customer_nzubia_global/core/network/error_interceptor.dart';

class DioClient {
  late final Dio _dio;

  DioClient(FlutterSecureStorage storage) {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(seconds: 45),
        receiveTimeout: const Duration(seconds: 45),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    _dio.interceptors.add(AuthInterceptor(storage));
    _dio.interceptors.add(ErrorInterceptor());
    _dio.interceptors.add(LogInterceptor(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
    )); // Useful for debugging
  }

  Dio get dio => _dio;
}
