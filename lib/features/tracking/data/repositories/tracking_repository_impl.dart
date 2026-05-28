import 'package:customer_nzubia_global/core/constants/api_constants.dart';
import 'package:customer_nzubia_global/core/network/dio_client.dart';
import 'package:customer_nzubia_global/features/tracking/data/models/tracking_model.dart';
import 'package:customer_nzubia_global/features/tracking/domain/entities/tracking_entity.dart';
import 'package:customer_nzubia_global/features/tracking/domain/repositories/tracking_repository.dart';

class TrackingRepositoryImpl implements TrackingRepository {
  final DioClient _dioClient;

  TrackingRepositoryImpl(this._dioClient);

  @override
  Future<TrackingEntity> getTrackingDetails(String shipmentId) async {
    try {
      final response = await _dioClient.dio.get('${ApiConstants.shipments}/track/$shipmentId');
      return TrackingModel.fromJson(response.data);
    } catch (e) {
      throw Exception('Get tracking details failed: $e');
    }
  }
}
