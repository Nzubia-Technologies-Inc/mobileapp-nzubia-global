import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:customer_nzubia_global/features/auth/domain/repositories/auth_repository.dart';
import 'profile_setup_event.dart';
import 'profile_setup_state.dart';

class ProfileSetupBloc extends Bloc<ProfileSetupEvent, ProfileSetupState> {
  final AuthRepository _authRepository;

  ProfileSetupBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const ProfileSetupState()) {
    on<ProfileNameChanged>(_onNameChanged);
    on<ProfileCompanyChanged>(_onCompanyChanged);
    on<ProfileBusinessToggleChanged>(_onBusinessToggleChanged);
    on<ProfileEinChanged>(_onEinChanged);
    on<ProfileSetupSubmitted>(_onSubmitted);
  }

  void _onNameChanged(ProfileNameChanged event, Emitter<ProfileSetupState> emit) {
    emit(state.copyWith(fullName: event.name, status: ProfileSetupStatus.initial));
  }

  void _onCompanyChanged(ProfileCompanyChanged event, Emitter<ProfileSetupState> emit) {
    emit(state.copyWith(companyName: event.companyName, status: ProfileSetupStatus.initial));
  }

  void _onBusinessToggleChanged(ProfileBusinessToggleChanged event, Emitter<ProfileSetupState> emit) {
    emit(state.copyWith(isBusinessAccount: event.isBusiness, status: ProfileSetupStatus.initial));
  }

  void _onEinChanged(ProfileEinChanged event, Emitter<ProfileSetupState> emit) {
    emit(state.copyWith(ein: event.ein, status: ProfileSetupStatus.initial));
  }

  Future<void> _onSubmitted(ProfileSetupSubmitted event, Emitter<ProfileSetupState> emit) async {
    emit(state.copyWith(status: ProfileSetupStatus.loading));
    try {
      await _authRepository.updateProfile(
        fullName: state.fullName,
        companyName: state.isBusinessAccount ? state.companyName : null,
        ein: state.isBusinessAccount ? state.ein : null,
        isBusiness: state.isBusinessAccount,
      );
      emit(state.copyWith(status: ProfileSetupStatus.success));
    } catch (e) {
      emit(state.copyWith(
        status: ProfileSetupStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
