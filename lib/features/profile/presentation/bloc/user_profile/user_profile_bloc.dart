import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:customer_nzubia_global/features/profile/domain/repositories/profile_repository.dart';
import 'user_profile_event.dart';
import 'user_profile_state.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final ProfileRepository _profileRepository;

  UserProfileBloc({required ProfileRepository profileRepository})
      : _profileRepository = profileRepository,
        super(const UserProfileState()) {
    on<LoadUserProfile>(_onLoadUserProfile);
    on<UpdateUserProfile>(_onUpdateUserProfile);
    on<SubmitChangeRequest>(_onSubmitChangeRequest);
  }

  Future<void> _onLoadUserProfile(LoadUserProfile event, Emitter<UserProfileState> emit) async {
    emit(state.copyWith(status: UserProfileStatus.loading));
    try {
      final profile = await _profileRepository.getProfile();
      emit(state.copyWith(status: UserProfileStatus.success, profile: profile));
    } catch (e) {
      emit(state.copyWith(
        status: UserProfileStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onUpdateUserProfile(UpdateUserProfile event, Emitter<UserProfileState> emit) async {
    emit(state.copyWith(status: UserProfileStatus.loading));
    try {
      await _profileRepository.updateProfile(event.profile);
      emit(state.copyWith(status: UserProfileStatus.success, profile: event.profile));
    } catch (e) {
      emit(state.copyWith(
        status: UserProfileStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onSubmitChangeRequest(SubmitChangeRequest event, Emitter<UserProfileState> emit) async {
    try {
      await _profileRepository.submitChangeRequest(event.changes);
      emit(state.copyWith(
        changeRequestMessage: 'Change request submitted successfully. Awaiting admin approval.',
      ));
    } catch (e) {
      emit(state.copyWith(
        changeRequestMessage: 'Failed to submit change request: ${e.toString()}',
      ));
    }
  }
}
