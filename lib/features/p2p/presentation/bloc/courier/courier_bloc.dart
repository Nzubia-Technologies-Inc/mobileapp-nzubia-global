import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:customer_nzubia_global/features/p2p/domain/models/p2p_courier_profile.dart';
import 'package:customer_nzubia_global/features/p2p/domain/repositories/p2p_courier_repository.dart';

part 'courier_event.dart';
part 'courier_state.dart';

class CourierBloc extends Bloc<CourierEvent, CourierState> {
  final P2pCourierRepository _repository;

  CourierBloc({required P2pCourierRepository repository})
      : _repository = repository,
        super(const CourierState()) {
    on<CourierProfileRequested>(_onProfileRequested);
    on<CourierApplicationSubmitted>(_onApplicationSubmitted);
    on<CourierAvailabilityToggled>(_onAvailabilityToggled);
  }

  Future<void> _onProfileRequested(
    CourierProfileRequested event,
    Emitter<CourierState> emit,
  ) async {
    emit(state.copyWith(status: CourierStatus.loading));
    try {
      final profile = await _repository.getMyProfile();
      emit(state.copyWith(status: CourierStatus.success, profile: profile));
    } catch (e) {
      emit(state.copyWith(
          status: CourierStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<void> _onApplicationSubmitted(
    CourierApplicationSubmitted event,
    Emitter<CourierState> emit,
  ) async {
    emit(state.copyWith(status: CourierStatus.loading));
    try {
      final profile = await _repository.applyAsCourier(event.applicationData);
      emit(state.copyWith(status: CourierStatus.success, profile: profile));
    } catch (e) {
      emit(state.copyWith(
          status: CourierStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<void> _onAvailabilityToggled(
    CourierAvailabilityToggled event,
    Emitter<CourierState> emit,
  ) async {
    try {
      final profile =
          await _repository.setAvailability(isActive: event.isActive);
      emit(state.copyWith(status: CourierStatus.success, profile: profile));
    } catch (e) {
      emit(state.copyWith(
          status: CourierStatus.failure, errorMessage: e.toString()));
    }
  }
}
