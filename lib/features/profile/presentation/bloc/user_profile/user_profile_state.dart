import 'package:equatable/equatable.dart';
import 'package:customer_nzubia_global/features/profile/domain/entities/user_profile_entity.dart';

enum UserProfileStatus { initial, loading, success, failure }

class UserProfileState extends Equatable {
  final UserProfileStatus status;
  final UserProfileEntity? profile;
  final String? errorMessage;
  final String? changeRequestMessage;

  const UserProfileState({
    this.status = UserProfileStatus.initial,
    this.profile,
    this.errorMessage,
    this.changeRequestMessage,
  });

  UserProfileState copyWith({
    UserProfileStatus? status,
    UserProfileEntity? profile,
    String? errorMessage,
    String? changeRequestMessage,
  }) {
    return UserProfileState(
      status: status ?? this.status,
      profile: profile ?? this.profile,
      errorMessage: errorMessage ?? this.errorMessage,
      changeRequestMessage: changeRequestMessage ?? this.changeRequestMessage,
    );
  }

  @override
  List<Object?> get props => [status, profile, errorMessage, changeRequestMessage];
}
