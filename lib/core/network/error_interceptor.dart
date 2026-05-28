import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    String errorMessage = 'An unexpected error occurred';

    // Handle Timeouts
    if (err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        err.type == DioExceptionType.sendTimeout) {
      errorMessage = 'Connection timed out. Please check your internet.';
    }
    // Handle specific No Internet / Connection Error
    else if (err.type == DioExceptionType.connectionError) {
       errorMessage = 'No internet connection available.';
    }
    // Handle Response Errors (4xx, 5xx)
    else if (err.response != null) {
      final statusCode = err.response?.statusCode;
      final data = err.response?.data;

      // Prioritize Status Codes for Server Errors
      if (statusCode == 502 || statusCode == 503 || statusCode == 504) {
        errorMessage = 'Server is currently unavailable. Please try again later.';
      } else if (statusCode == 500) {
        errorMessage = 'Internal Server Error. Please try again later.';
      } else if (statusCode == 404) {
        errorMessage = 'Requested resource not found.'; // Or "Service endpoint not found"
      } 
      // Handle Standard API Errors (JSON)
      else if (data is Map<String, dynamic>) {
        if (data.containsKey('message')) {
          final message = data['message'];
          if (message is List) {
            // Join list messages, e.g. validation errors
            errorMessage = message.join('\n');
          } else {
            errorMessage = message.toString();
          }
        } else if (data.containsKey('error')) {
          errorMessage = data['error'].toString();
        }
      } 
      // Handle Raw String Responses (Avoid showing HTML)
      else if (data is String) {
        if (data.trim().toLowerCase().startsWith('<html>') || 
            data.trim().toLowerCase().startsWith('<!doctype html>')) {
           // Fallback for HTML errors that didn't match specific status codes above
           errorMessage = 'Server error ($statusCode). Please contact support.';
        } else {
           // Allow plain text errors if they aren't HTML
           errorMessage = data.isNotEmpty ? data : 'An unexpected error occurred.';
        }
      }
    }
    // Handle Unknown/Other Errors (often SocketException hidden here)
    // Handle Unknown/Other Errors (often SocketException hidden here)
    else if (err.type == DioExceptionType.unknown) {
      if (err.error.toString().contains('SocketException') || err.error.toString().contains('Network is unreachable')) {
          errorMessage = 'No internet connection available. Please check your network.';
      } else if (err.error.toString().contains('Connection refused')) {
          errorMessage = 'Unable to connect to server. It might be down.';
      } else {
          errorMessage = 'An unexpected error occurred. Please try again.';
      }
    }

    // Pass a new DioException with the clean message
    final cleanError = DioException(
      requestOptions: err.requestOptions,
      response: err.response,
      type: err.type,
      error: errorMessage,
      message: errorMessage,
    );

    super.onError(cleanError, handler);
  }
}
