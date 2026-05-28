import 'package:equatable/equatable.dart';
import 'package:customer_nzubia_global/features/profile/domain/entities/user_profile_entity.dart';

abstract class UserProfileEvent extends Equatable {
  const UserProfileEvent();

  @override
  List<Object> get props => [];
}

class LoadUserProfile extends UserProfileEvent {}

class UpdateUserProfile extends UserProfileEvent {
  final UserProfileEntity profile;
  const UpdateUserProfile(this.profile);
  @override
  List<Object> get props => [profile];
}

class SubmitChangeRequest extends UserProfileEvent {
  final Map<String, dynamic> changes;
  const SubmitChangeRequest(this.changes);
  @override
  List<Object> get props => [changes];
}
