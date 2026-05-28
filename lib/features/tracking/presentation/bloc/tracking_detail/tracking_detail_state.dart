import 'package:equatable/equatable.dart';
import 'package:customer_nzubia_global/features/tracking/domain/entities/tracking_entity.dart';

enum TrackingDetailStatus { initial, loading, success, failure }

class TrackingDetailState extends Equatable {
  final TrackingDetailStatus status;
  final TrackingEntity? trackingEntity;
  final String? errorMessage;

  const TrackingDetailState({
    this.status = TrackingDetailStatus.initial,
    this.trackingEntity,
    this.errorMessage,
  });

  TrackingDetailState copyWith({
    TrackingDetailStatus? status,
    TrackingEntity? trackingEntity,
    String? errorMessage,
  }) {
    return TrackingDetailState(
      status: status ?? this.status,
      trackingEntity: trackingEntity ?? this.trackingEntity,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, trackingEntity, errorMessage];
}
