part of 'p2p_compliance_bloc.dart';

enum P2pComplianceStatus {
  initial,
  loading,
  loaded,
  waiverPreview,
  waiverAccepted,
  failure,
}

class P2pComplianceState extends Equatable {
  final P2pComplianceStatus status;
  final P2pComplianceRules? rules;
  final List<String> restrictedItems;
  final P2pWaiverPreview? waiverPreview;
  final P2pWaiver? signedWaiver;
  final P2pShipmentComplianceStatus? shipmentStatus;
  final String? errorMessage;

  const P2pComplianceState({
    this.status = P2pComplianceStatus.initial,
    this.rules,
    this.restrictedItems = const [],
    this.waiverPreview,
    this.signedWaiver,
    this.shipmentStatus,
    this.errorMessage,
  });

  P2pComplianceState copyWith({
    P2pComplianceStatus? status,
    P2pComplianceRules? rules,
    List<String>? restrictedItems,
    P2pWaiverPreview? waiverPreview,
    P2pWaiver? signedWaiver,
    P2pShipmentComplianceStatus? shipmentStatus,
    String? errorMessage,
  }) {
    return P2pComplianceState(
      status: status ?? this.status,
      rules: rules ?? this.rules,
      restrictedItems: restrictedItems ?? this.restrictedItems,
      waiverPreview: waiverPreview ?? this.waiverPreview,
      signedWaiver: signedWaiver ?? this.signedWaiver,
      shipmentStatus: shipmentStatus ?? this.shipmentStatus,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        status,
        rules,
        restrictedItems,
        waiverPreview,
        signedWaiver,
        shipmentStatus,
        errorMessage,
      ];
}
