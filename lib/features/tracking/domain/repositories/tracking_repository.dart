import 'package:customer_nzubia_global/features/tracking/domain/entities/tracking_entity.dart';

abstract class TrackingRepository {
  Future<TrackingEntity> getTrackingDetails(String shipmentId);
}
