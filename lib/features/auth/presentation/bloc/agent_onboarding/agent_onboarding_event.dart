import 'package:equatable/equatable.dart';

abstract class AgentOnboardingEvent extends Equatable {
  const AgentOnboardingEvent();

  @override
  List<Object?> get props => [];
}

class AgentTypeChanged extends AgentOnboardingEvent {
  final String type; // 'INDIVIDUAL' or 'BUSINESS'
  const AgentTypeChanged(this.type);

  @override
  List<Object?> get props => [type];
}

class OnboardingFieldChanged extends AgentOnboardingEvent {
  final String field;
  final dynamic value;

  const OnboardingFieldChanged(this.field, this.value);

  @override
  List<Object?> get props => [field, value];
}

class OnboardingFilePicked extends AgentOnboardingEvent {
  final String field; // 'id_document', 'selfie', 'insurance'
  final String path;

  const OnboardingFilePicked(this.field, this.path);

  @override
  List<Object?> get props => [field, path];
}

class OnboardingSubmitted extends AgentOnboardingEvent {
  const OnboardingSubmitted();
}

class InitializeOnboarding extends AgentOnboardingEvent {
  final dynamic user; // Using dynamic to avoid circular import or complex typing for now
  const InitializeOnboarding(this.user);

  @override
  List<Object> get props => [user];
}
