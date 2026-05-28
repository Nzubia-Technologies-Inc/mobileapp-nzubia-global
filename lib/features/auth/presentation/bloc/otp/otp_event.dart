import 'package:equatable/equatable.dart';

abstract class OtpEvent extends Equatable {
  const OtpEvent();

  @override
  List<Object> get props => [];
}

class OtpCodeChanged extends OtpEvent {
  final String code;
  const OtpCodeChanged(this.code);

  @override
  List<Object> get props => [code];
}

class OtpSubmitted extends OtpEvent {
  const OtpSubmitted();
}

class OtpResendRequested extends OtpEvent {
  const OtpResendRequested();
}
