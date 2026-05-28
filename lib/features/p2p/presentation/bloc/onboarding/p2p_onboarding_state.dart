part of 'p2p_onboarding_bloc.dart';

enum OnboardingStatus { step, submitting, success, failure }

class P2pOnboardingState extends Equatable {
  final OnboardingStatus status;
  /// 0 = apply (intro), 1 = identity, 2 = documents, 3 = route,
  /// 4 = compliance, 5 = review.
  final int stepIndex;
  final Map<String, dynamic> collectedData;
  final P2pCourierProfile? profile;
  final String? errorMessage;

  const P2pOnboardingState({
    this.status = OnboardingStatus.step,
    this.stepIndex = 0,
    this.collectedData = const {},
    this.profile,
    this.errorMessage,
  });

  P2pOnboardingState copyWith({
    OnboardingStatus? status,
    int? stepIndex,
    Map<String, dynamic>? collectedData,
    P2pCourierProfile? profile,
    String? errorMessage,
  }) {
    return P2pOnboardingState(
      status: status ?? this.status,
      stepIndex: stepIndex ?? this.stepIndex,
      collectedData: collectedData ?? this.collectedData,
      profile: profile ?? this.profile,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props =>
      [status, stepIndex, collectedData, profile, errorMessage];
}
