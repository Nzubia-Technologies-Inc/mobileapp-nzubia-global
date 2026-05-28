import 'package:dio/dio.dart';
import 'package:customer_nzubia_global/core/network/dio_client.dart';
import 'package:customer_nzubia_global/core/constants/api_constants.dart';
import 'package:customer_nzubia_global/features/p2p/domain/models/p2p_waiver.dart';
import 'package:customer_nzubia_global/features/p2p/domain/repositories/p2p_compliance_repository.dart';
import 'package:customer_nzubia_global/features/p2p/data/exceptions/p2p_exception.dart';

class P2pComplianceRepositoryImpl implements P2pComplianceRepository {
  final DioClient _client;

  P2pComplianceRepositoryImpl({required DioClient client}) : _client = client;

  @override
  Future<P2pComplianceRules> getRules() async {
    try {
      final response =
          await _client.dio.get(ApiConstants.p2pComplianceRules);
      return P2pComplianceRules.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      _handleDioError(e);
    }
  }

  @override
  Future<List<String>> getRestrictedItems() async {
    try {
      final response =
          await _client.dio.get(ApiConstants.p2pComplianceRestricted);
      final body = response.data;
      if (body is Map && body['items'] is List) {
        return (body['items'] as List).map((e) => e.toString()).toList();
      }
      if (body is List) {
        return body.map((e) => e.toString()).toList();
      }
      return const [];
    } on DioException catch (e) {
      _handleDioError(e);
    }
  }

  @override
  Future<P2pWaiverPreview> previewWaiver(String shipmentRequestId) async {
    try {
      final response = await _client.dio
          .get(ApiConstants.p2pComplianceWaiver(shipmentRequestId));
      return P2pWaiverPreview.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      _handleDioError(e);
    }
  }

  @override
  Future<P2pWaiver> acceptWaiver(
    String shipmentRequestId, {
    required List<String> acknowledgedFlags,
    Map<String, dynamic>? proofMetadata,
  }) async {
    try {
      final response = await _client.dio.post(
        ApiConstants.p2pComplianceWaiverAccept(shipmentRequestId),
        data: {
          'acknowledgedFlags': acknowledgedFlags,
          if (proofMetadata != null) 'proofMetadata': proofMetadata,
        },
      );
      return P2pWaiver.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      _handleDioError(e);
    }
  }

  @override
  Future<P2pShipmentComplianceStatus> getComplianceStatus(
      String shipmentRequestId) async {
    try {
      final response = await _client.dio
          .get(ApiConstants.p2pComplianceStatus(shipmentRequestId));
      return P2pShipmentComplianceStatus.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      _handleDioError(e);
    }
  }

  Never _handleDioError(DioException e) {
    final code = e.response?.statusCode ?? 0;
    final raw = e.response?.data;
    final message = (raw is Map && raw['message'] is String)
        ? raw['message'] as String
        : (raw is Map && raw['message'] is List)
            ? (raw['message'] as List).join(', ')
            : e.message ?? 'Unknown error';

    switch (code) {
      case 400:
        throw P2pException.badRequest(message);
      case 401:
        throw P2pException.unauthorized();
      case 403:
        throw P2pException.forbidden(message);
      case 404:
        throw P2pException.notFound('Compliance resource');
      case 409:
        throw P2pException.conflict(message);
      default:
        throw P2pException.unknown(message);
    }
  }
}
