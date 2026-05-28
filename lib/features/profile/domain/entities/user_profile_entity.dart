import 'package:equatable/equatable.dart';

class UserProfileEntity extends Equatable {
  final String id;
  final String email;
  final String fullName;
  final String phoneNumber;
  final String? companyName;
  final String? businessAddress;
  final String profileImageUrl;
  final String role;
  // Agent-specific fields
  final String? agentType;
  final List<String> serviceRegions;
  final double rating;
  final int ratingCount;
  final int? yearsInBusiness;
  final int? fleetSize;
  final String? licenseNumber;
  final String? kycStatus;
  final String? businessName;
  final String? preferredPayoutMethod;
  final String? zelleEmail;
  final String? zellePhone;

  const UserProfileEntity({
    required this.id,
    required this.email,
    required this.fullName,
    required this.phoneNumber,
    required this.role,
    this.companyName,
    this.businessAddress,
    this.profileImageUrl = '',
    this.agentType,
    this.serviceRegions = const [],
    this.rating = 0.0,
    this.ratingCount = 0,
    this.yearsInBusiness,
    this.fleetSize,
    this.licenseNumber,
    this.kycStatus,
    this.businessName,
    this.preferredPayoutMethod,
    this.zelleEmail,
    this.zellePhone,
  });

  @override
  List<Object?> get props => [
        id,
        email,
        fullName,
        phoneNumber,
        companyName,
        businessAddress,
        profileImageUrl,
        role,
        agentType,
        serviceRegions,
        rating,
        ratingCount,
        yearsInBusiness,
        fleetSize,
        licenseNumber,
        kycStatus,
        businessName,
        preferredPayoutMethod,
        zelleEmail,
        zellePhone,
      ];
}
