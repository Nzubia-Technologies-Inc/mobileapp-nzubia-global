part of 'p2p_compliance_bloc.dart';

abstract class P2pComplianceEvent {
  const P2pComplianceEvent();
}

class P2pComplianceLoadRequested extends P2pComplianceEvent {
  const P2pComplianceLoadRequested();
}

class P2pComplianceWaiverPreviewRequested extends P2pComplianceEvent {
  final String shipmentRequestId;
  const P2pComplianceWaiverPreviewRequested(this.shipmentRequestId);
}

class P2pComplianceWaiverAccepted extends P2pComplianceEvent {
  final String shipmentRequestId;
  final List<String> acknowledgedFlags;
  final Map<String, dynamic>? proofMetadata;

  const P2pComplianceWaiverAccepted({
    required this.shipmentRequestId,
    required this.acknowledgedFlags,
    this.proofMetadata,
  });
}

class P2pComplianceShipmentStatusRequested extends P2pComplianceEvent {
  final String shipmentRequestId;
  const P2pComplianceShipmentStatusRequested(this.shipmentRequestId);
}
