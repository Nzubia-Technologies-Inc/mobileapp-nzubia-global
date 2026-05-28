import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:customer_nzubia_global/features/auth/domain/repositories/auth_repository.dart';
import 'package:customer_nzubia_global/core/utils/service_locator.dart';
import 'package:customer_nzubia_global/features/messaging/domain/repositories/messaging_repository.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'register_event.dart';
import 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRepository _authRepository;

  RegisterBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const RegisterState()) {
    on<RegisterEmailChanged>(_onEmailChanged);
    on<RegisterPhoneChanged>(_onPhoneChanged);
    on<RegisterPasswordChanged>(_onPasswordChanged);
    on<RegisterRoleChanged>(_onRoleChanged);
    on<RegisterIsBusinessChanged>(_onIsBusinessChanged);
    on<RegisterCompanyNameChanged>(_onCompanyNameChanged);
    on<RegisterSubmitted>(_onSubmitted);
  }

  void _onEmailChanged(RegisterEmailChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(email: event.email, status: RegisterStatus.initial));
  }

  void _onPhoneChanged(RegisterPhoneChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(phone: event.phone, status: RegisterStatus.initial));
  }

  void _onPasswordChanged(RegisterPasswordChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(password: event.password, status: RegisterStatus.initial));
  }

  void _onRoleChanged(RegisterRoleChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(role: event.role, status: RegisterStatus.initial));
  }

  void _onIsBusinessChanged(RegisterIsBusinessChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(isBusiness: event.isBusiness, status: RegisterStatus.initial));
  }

  void _onCompanyNameChanged(RegisterCompanyNameChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(companyName: event.companyName, status: RegisterStatus.initial));
  }

  Future<void> _onSubmitted(RegisterSubmitted event, Emitter<RegisterState> emit) async {
    emit(state.copyWith(status: RegisterStatus.loading));
    try {
      final user = await _authRepository.register(
        state.email, 
        state.phone, 
        state.password, 
        role: state.role,
        // Only verify business name if Customer + isBusiness checked
        businessName: (state.role == 'CUSTOMER' && state.isBusiness && state.companyName.isNotEmpty) 
            ? state.companyName 
            : null
      );
      
      if (user.isVerified) {
         await sl<MessagingRepository>().initialize();
         
         // OneSignal Login
         if (!kIsWeb) {
           OneSignal.login(user.id);
         }
      }

      emit(state.copyWith(
        status: RegisterStatus.success,
        isVerified: user.isVerified,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: RegisterStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
