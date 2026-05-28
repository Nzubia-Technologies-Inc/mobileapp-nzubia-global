import 'package:equatable/equatable.dart';
import 'package:customer_nzubia_global/features/p2p/domain/enums/p2p_enums.dart';

/// A single rule presented inside a waiver. Now derived from the
/// `acknowledge_flags` list returned by `/p2p/compliance/waiver/:shipmentId`.
class P2pWaiverRule extends Equatable {
  final String flag;
  final String title;
  final String description;

  const P2pWaiverRule({
    required this.flag,
    required this.title,
    required this.description,
  });

  /// Translate a backend flag key (e.g. `NO_PROHIBITED_ITEMS`) into a friendly
  /// title + description for the compliance UI.
  factory P2pWaiverRule.fromFlag(String flag) {
    switch (flag) {
      case 'NO_PROHIBITED_ITEMS':
        return const P2pWaiverRule(
          flag: 'NO_PROHIBITED_ITEMS',
          title: 'No prohibited items',
          description:
              'I confirm this package does not contain weapons, drugs, hazardous '
              'materials or any items prohibited by the destination country.',
        );
      case 'ACCURATE_VALUE_DECLARED':
        return const P2pWaiverRule(
          flag: 'ACCURATE_VALUE_DECLARED',
          title: 'Accurate declared value',
          description:
              'The declared value matches the actual contents of the package, '
              'including for customs declaration.',
        );
      case 'CUSTOMS_RESPONSIBILITY':
        return const P2pWaiverRule(
          flag: 'CUSTOMS_RESPONSIBILITY',
          title: 'Customs responsibility',
          description:
              'I understand that any customs duties, taxes or import fees are '
              'my responsibility, not the courier’s.',
        );
      case 'MARKETPLACE_DISCLAIMER':
        return const P2pWaiverRule(
          flag: 'MARKETPLACE_DISCLAIMER',
          title: 'Marketplace disclaimer',
          description:
              'Nzubia is a marketplace connecting seekers and couriers and does '
              'not transport packages directly. I accept the marketplace terms.',
        );
      default:
        return P2pWaiverRule(
          flag: flag,
          title: flag.replaceAll('_', ' ').toLowerCase(),
          description: 'I acknowledge this requirement.',
        );
    }
  }

  @override
  List<Object?> get props => [flag, title, description];
}

/// Response from `GET /p2p/compliance/waiver/:shipmentId` — what to render
/// before the user accepts the waiver.
class P2pWaiverPreview extends Equatable {
  final String shipmentId;
  final String termsVersion;
  final String waiverText;
  final List<P2pWaiverRule> rules;

  const P2pWaiverPreview({
    required this.shipmentId,
    required this.termsVersion,
    required this.waiverText,
    required this.rules,
  });

  factory P2pWaiverPreview.fromJson(Map<String, dynamic> json) {
    final flags = (json['acknowledge_flags'] as List? ?? const [])
        .map((e) => e.toString())
        .toList();
    return P2pWaiverPreview(
      shipmentId: json['shipment_id'] as String,
      termsVersion: json['terms_version'] as String? ?? '',
      waiverText: json['waiver_text'] as String? ?? '',
      rules: flags.map(P2pWaiverRule.fromFlag).toList(growable: false),
    );
  }

  @override
  List<Object?> get props => [shipmentId, termsVersion, waiverText, rules];
}

/// Persisted waiver record returned by `POST /p2p/compliance/waiver/:id/accept`
/// and embedded in `GET /p2p/compliance/status/:id`.
class P2pWaiver extends Equatable {
  final String id;
  final String shipmentRequestId;
  final String signedByUserId;
  final String termsVersion;
  final List<String> acknowledgedFlags;
  final Map<String, dynamic>? proofMetadata;
  final WaiverStatus status;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const P2pWaiver({
    required this.id,
    required this.shipmentRequestId,
    required this.signedByUserId,
    required this.termsVersion,
    this.acknowledgedFlags = const [],
    this.proofMetadata,
    required this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory P2pWaiver.fromJson(Map<String, dynamic> json) {
    return P2pWaiver(
      id: json['id'] as String,
      shipmentRequestId: json['shipment_request_id'] as String,
      signedByUserId: json['signed_by_user_id'] as String,
      termsVersion: json['terms_version'] as String? ?? '',
      acknowledgedFlags: (json['acknowledged_flags'] as List? ?? const [])
          .map((e) => e.toString())
          .toList(),
      proofMetadata: json['proof_metadata'] is Map<String, dynamic>
          ? Map<String, dynamic>.from(json['proof_metadata'] as Map)
          : null,
      status: WaiverStatus.fromJson(json['status'] as String?),
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'] as String)
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'] as String)
          : null,
    );
  }

  bool get isAccepted => status == WaiverStatus.accepted;

  @override
  List<Object?> get props => [
        id,
        shipmentRequestId,
        signedByUserId,
        termsVersion,
        acknowledgedFlags,
        proofMetadata,
        status,
        createdAt,
        updatedAt,
      ];
}

/// Aggregated rules from `/p2p/compliance/rules`.
class P2pComplianceRules extends Equatable {
  final double platformFeePercent;
  final double defaultRadiusKm;
  final String waiverVersion;
  final double maxWeightKg;
  final double maxDeclaredValueUsd;
  final List<String> restrictedCategories;

  const P2pComplianceRules({
    required this.platformFeePercent,
    required this.defaultRadiusKm,
    required this.waiverVersion,
    required this.maxWeightKg,
    required this.maxDeclaredValueUsd,
    required this.restrictedCategories,
  });

  factory P2pComplianceRules.fromJson(Map<String, dynamic> json) {
    return P2pComplianceRules(
      platformFeePercent:
          (json['platform_fee_percent'] as num?)?.toDouble() ?? 0.0,
      defaultRadiusKm: (json['default_radius_km'] as num?)?.toDouble() ?? 0.0,
      waiverVersion: json['waiver_version'] as String? ?? '',
      maxWeightKg: (json['max_weight_kg'] as num?)?.toDouble() ?? 0.0,
      maxDeclaredValueUsd:
          (json['max_declared_value_usd'] as num?)?.toDouble() ?? 0.0,
      restrictedCategories: (json['restricted_categories'] as List? ?? const [])
          .map((e) => e.toString())
          .toList(),
    );
  }

  @override
  List<Object?> get props => [
        platformFeePercent,
        defaultRadiusKm,
        waiverVersion,
        maxWeightKg,
        maxDeclaredValueUsd,
        restrictedCategories,
      ];
}

class P2pComplianceRecord extends Equatable {
  final String id;
  final String shipmentRequestId;
  final bool prohibitedItemDetected;
  final List<String> restrictedCategoryFlags;
  final bool manualReviewRequired;
  final String? rejectionReason;
  final DateTime? reviewedAt;
  final DateTime? createdAt;

  const P2pComplianceRecord({
    required this.id,
    required this.shipmentRequestId,
    required this.prohibitedItemDetected,
    this.restrictedCategoryFlags = const [],
    required this.manualReviewRequired,
    this.rejectionReason,
    this.reviewedAt,
    this.createdAt,
  });

  factory P2pComplianceRecord.fromJson(Map<String, dynamic> json) {
    return P2pComplianceRecord(
      id: json['id'] as String,
      shipmentRequestId: json['shipment_request_id'] as String,
      prohibitedItemDetected:
          json['prohibited_item_detected'] as bool? ?? false,
      restrictedCategoryFlags:
          (json['restricted_category_flags'] as List? ?? const [])
              .map((e) => e.toString())
              .toList(),
      manualReviewRequired: json['manual_review_required'] as bool? ?? false,
      rejectionReason: json['rejection_reason'] as String?,
      reviewedAt: json['reviewed_at'] != null
          ? DateTime.parse(json['reviewed_at'] as String)
          : null,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'] as String)
          : null,
    );
  }

  @override
  List<Object?> get props => [
        id,
        shipmentRequestId,
        prohibitedItemDetected,
        restrictedCategoryFlags,
        manualReviewRequired,
        rejectionReason,
        reviewedAt,
        createdAt,
      ];
}

class P2pShipmentComplianceStatus extends Equatable {
  final P2pComplianceRecord? record;
  final WaiverStatus? waiverStatus;

  const P2pShipmentComplianceStatus({this.record, this.waiverStatus});

  factory P2pShipmentComplianceStatus.fromJson(Map<String, dynamic> json) {
    return P2pShipmentComplianceStatus(
      record: json['record'] is Map<String, dynamic>
          ? P2pComplianceRecord.fromJson(
              json['record'] as Map<String, dynamic>,
            )
          : null,
      waiverStatus: json['waiver_status'] != null
          ? WaiverStatus.fromJson(json['waiver_status'] as String?)
          : null,
    );
  }

  bool get waiverAccepted => waiverStatus == WaiverStatus.accepted;

  @override
  List<Object?> get props => [record, waiverStatus];
}
