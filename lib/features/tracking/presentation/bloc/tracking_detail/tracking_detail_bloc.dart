import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:customer_nzubia_global/features/tracking/domain/repositories/tracking_repository.dart';
import 'tracking_detail_event.dart';
import 'tracking_detail_state.dart';

class TrackingDetailBloc extends Bloc<TrackingDetailEvent, TrackingDetailState> {
  final TrackingRepository _trackingRepository;

  TrackingDetailBloc({required TrackingRepository trackingRepository})
      : _trackingRepository = trackingRepository,
        super(const TrackingDetailState()) {
    on<LoadTrackingDetails>(_onLoadTrackingDetails);
  }

  Future<void> _onLoadTrackingDetails(LoadTrackingDetails event, Emitter<TrackingDetailState> emit) async {
    emit(state.copyWith(status: TrackingDetailStatus.loading));
    try {
      final details = await _trackingRepository.getTrackingDetails(event.shipmentId);
      emit(state.copyWith(status: TrackingDetailStatus.success, trackingEntity: details));
    } catch (e) {
      emit(state.copyWith(
        status: TrackingDetailStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
