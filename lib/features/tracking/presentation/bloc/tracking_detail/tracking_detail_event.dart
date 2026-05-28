import 'package:equatable/equatable.dart';

abstract class TrackingDetailEvent extends Equatable {
  const TrackingDetailEvent();

  @override
  List<Object> get props => [];
}

class LoadTrackingDetails extends TrackingDetailEvent {
  final String shipmentId;
  const LoadTrackingDetails(this.shipmentId);
  @override
  List<Object> get props => [shipmentId];
}
