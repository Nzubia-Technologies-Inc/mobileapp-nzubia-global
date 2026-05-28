part of 'courier_bloc.dart';

enum CourierStatus { initial, loading, success, failure }

class CourierState {
  final CourierStatus status;
  final P2pCourierProfile? profile;
  final String? errorMessage;

  const CourierState({
    this.status = CourierStatus.initial,
    this.profile,
    this.errorMessage,
  });

  CourierState copyWith({
    CourierStatus? status,
    P2pCourierProfile? profile,
    String? errorMessage,
  }) {
    return CourierState(
      status: status ?? this.status,
      profile: profile ?? this.profile,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
