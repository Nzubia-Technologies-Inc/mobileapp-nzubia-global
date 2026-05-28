import 'package:equatable/equatable.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class RegisterEmailChanged extends RegisterEvent {
  final String email;
  const RegisterEmailChanged(this.email);

  @override
  List<Object> get props => [email];
}

class RegisterPhoneChanged extends RegisterEvent {
  final String phone;
  const RegisterPhoneChanged(this.phone);

  @override
  List<Object> get props => [phone];
}

class RegisterPasswordChanged extends RegisterEvent {
  final String password;
  const RegisterPasswordChanged(this.password);

  @override
  List<Object> get props => [password];
}

class RegisterRoleChanged extends RegisterEvent {
  final String role;
  const RegisterRoleChanged(this.role);

  @override
  List<Object> get props => [role];
}

class RegisterIsBusinessChanged extends RegisterEvent {
  final bool isBusiness;
  const RegisterIsBusinessChanged(this.isBusiness);

  @override
  List<Object> get props => [isBusiness];
}

class RegisterCompanyNameChanged extends RegisterEvent {
  final String companyName;
  const RegisterCompanyNameChanged(this.companyName);

  @override
  List<Object> get props => [companyName];
}

class RegisterSubmitted extends RegisterEvent {
  const RegisterSubmitted();
}
