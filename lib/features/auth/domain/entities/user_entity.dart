import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String email;
  final String role;
  final bool isVerified;
  final String? firstName;
  final String? lastName;
  final String? profilePictureUrl;
  final String phone;

  // Agent Specific
  final String? companyName;
  final String? agentType;
  final String? address;
  final String? businessRegNumber;
  final String? taxId;
  final String? licenseNumber;
  final String? idType;
  final String? idNumber;
  final int kycLevel;
  final String? kycProvider;
  final DateTime? kycVerifiedAt;
  final int? yearsInBusiness;
  final int? fleetSize;
  final int? serviceRadiusKm;
  final String? idDocumentUrl;
  final String? selfieUrl;
  final String? insuranceCertificateUrl;
  final double? rating;
  final int? reviewCount;
  final int? ordersFulfilled;
  final List<String>? specialization;
  final List<String>? serviceRegions;

  final String kycStatus;
  final String? kycNotes;

  // Payout Information
  final String? preferredPayoutMethod;
  final String? zelleEmail;
  final String? zellePhone;

  const UserEntity({
    required this.id,
    required this.email,
    required this.role,
    required this.isVerified,
    this.kycStatus = 'NOT_SUBMITTED',
    this.kycNotes,
    this.firstName,
    this.lastName,
    this.profilePictureUrl,
    this.phone = '',
    this.companyName,
    this.agentType,
    this.address,
    this.businessRegNumber,
    this.taxId,
    this.licenseNumber,
    this.idType,
    this.idNumber,
    this.kycLevel = 1,
    this.kycProvider,
    this.kycVerifiedAt,
    this.yearsInBusiness,
    this.fleetSize,
    this.serviceRadiusKm,
    this.idDocumentUrl,
    this.selfieUrl,
    this.insuranceCertificateUrl,
    this.rating,
    this.reviewCount,
    this.ordersFulfilled,
    this.specialization,
    this.serviceRegions,
    this.preferredPayoutMethod,
    this.zelleEmail,
    this.zellePhone,
  });

  String get fullName => '${firstName ?? ''} ${lastName ?? ''}'.trim();
  String get businessName => companyName ?? '';
  String get profileImageUrl => profilePictureUrl ?? '';


  @override
  List<Object?> get props => [
        id,
        email,
        role,
        isVerified,
        kycStatus,
        kycNotes,
        firstName,
        lastName,
        profilePictureUrl,
        phone,
        companyName,
        agentType,
        address,
        businessRegNumber,
        taxId,
        licenseNumber,
        idType,
        idNumber,
        kycLevel,
        kycProvider,
        kycVerifiedAt,
        yearsInBusiness,
        fleetSize,
        serviceRadiusKm,
        idDocumentUrl,
        selfieUrl,
        insuranceCertificateUrl,
        rating,
        reviewCount,
        ordersFulfilled,
        specialization,
        serviceRegions,
        preferredPayoutMethod,
        zelleEmail,
        zellePhone,
      ];
}
