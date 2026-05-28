/// Typed exception thrown by every P2P repository implementation.
class P2pException implements Exception {
  final int statusCode;
  final String message;

  const P2pException({required this.statusCode, required this.message});

  /// Factories for common HTTP error codes.
  factory P2pException.badRequest(String message) =>
      P2pException(statusCode: 400, message: message);

  factory P2pException.unauthorized() =>
      const P2pException(statusCode: 401, message: 'Unauthorized. Please log in again.');

  factory P2pException.forbidden(String message) =>
      P2pException(statusCode: 403, message: message);

  factory P2pException.notFound(String resource) =>
      P2pException(statusCode: 404, message: '$resource not found.');

  factory P2pException.conflict(String message) =>
      P2pException(statusCode: 409, message: message);

  factory P2pException.unknown(Object error) =>
      P2pException(statusCode: 0, message: error.toString());

  @override
  String toString() => message;
}
