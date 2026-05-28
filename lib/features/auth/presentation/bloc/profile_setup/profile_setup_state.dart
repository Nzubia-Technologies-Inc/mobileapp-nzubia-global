import 'package:equatable/equatable.dart';

enum ProfileSetupStatus { initial, loading, success, failure }

class ProfileSetupState extends Equatable {
  final ProfileSetupStatus status;
  final String fullName;
  final String companyName;
  final bool isBusinessAccount;
  final String ein;
  final String? errorMessage;

  const ProfileSetupState({
    this.status = ProfileSetupStatus.initial,
    this.fullName = '',
    this.companyName = '',
    this.isBusinessAccount = false,
    this.ein = '',
    this.errorMessage,
  });

  ProfileSetupState copyWith({
    ProfileSetupStatus? status,
    String? fullName,
    String? companyName,
    bool? isBusinessAccount,
    String? ein,
    String? errorMessage,
  }) {
    return ProfileSetupState(
      status: status ?? this.status,
      fullName: fullName ?? this.fullName,
      companyName: companyName ?? this.companyName,
      isBusinessAccount: isBusinessAccount ?? this.isBusinessAccount,
      ein: ein ?? this.ein,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, fullName, companyName, isBusinessAccount, ein, errorMessage];
}
