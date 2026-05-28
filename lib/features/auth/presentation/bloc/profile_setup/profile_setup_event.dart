import 'package:equatable/equatable.dart';

abstract class ProfileSetupEvent extends Equatable {
  const ProfileSetupEvent();

  @override
  List<Object> get props => [];
}

class ProfileNameChanged extends ProfileSetupEvent {
  final String name;
  const ProfileNameChanged(this.name);

  @override
  List<Object> get props => [name];
}

class ProfileCompanyChanged extends ProfileSetupEvent {
  final String companyName;
  const ProfileCompanyChanged(this.companyName);

  @override
  List<Object> get props => [companyName];
}

class ProfileBusinessToggleChanged extends ProfileSetupEvent {
  final bool isBusiness;
  const ProfileBusinessToggleChanged(this.isBusiness);

  @override
  List<Object> get props => [isBusiness];
}

class ProfileEinChanged extends ProfileSetupEvent {
  final String ein;
  const ProfileEinChanged(this.ein);

  @override
  List<Object> get props => [ein];
}

class ProfileSetupSubmitted extends ProfileSetupEvent {
  const ProfileSetupSubmitted();
}
