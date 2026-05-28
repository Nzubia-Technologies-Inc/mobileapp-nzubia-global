import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginEmailChanged extends LoginEvent {
  final String email;
  const LoginEmailChanged(this.email);

  @override
  List<Object> get props => [email];
}

class LoginPasswordChanged extends LoginEvent {
  final String password;
  const LoginPasswordChanged(this.password);

  @override
  List<Object> get props => [password];
}

class LoginSubmitted extends LoginEvent {
  const LoginSubmitted();
}

class LoginOtpChanged extends LoginEvent {
  final String otp;
  const LoginOtpChanged(this.otp);

  @override
  List<Object> get props => [otp];
}

class LoginVerifyOtpSubmitted extends LoginEvent {
  const LoginVerifyOtpSubmitted();
}

class LoginReset extends LoginEvent {
  const LoginReset();
}

class LoginResendOtp extends LoginEvent {
  const LoginResendOtp();
}

class LoginWithBiometrics extends LoginEvent {
  const LoginWithBiometrics();
}
