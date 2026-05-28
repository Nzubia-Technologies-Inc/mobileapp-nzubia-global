import 'package:customer_nzubia_global/features/p2p/domain/models/p2p_waiver.dart';

abstract class P2pComplianceRepository {
  /// Aggregated platform rules (fees, radius, limits).
  Future<P2pComplianceRules> getRules();

  /// Backend-managed list of prohibited terms keywords.
  Future<List<String>> getRestrictedItems();

  /// Previews the waiver document for a shipment before acceptance.
  Future<P2pWaiverPreview> previewWaiver(String shipmentRequestId);

  /// Records the user's acceptance of the waiver.
  Future<P2pWaiver> acceptWaiver(
    String shipmentRequestId, {
    required List<String> acknowledgedFlags,
    Map<String, dynamic>? proofMetadata,
  });

  /// Per-shipment compliance status (record + waiver state).
  Future<P2pShipmentComplianceStatus> getComplianceStatus(
    String shipmentRequestId,
  );
}
