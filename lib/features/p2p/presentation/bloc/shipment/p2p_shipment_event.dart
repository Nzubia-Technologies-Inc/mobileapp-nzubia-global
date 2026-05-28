part of 'p2p_shipment_bloc.dart';

abstract class P2pShipmentEvent {
  const P2pShipmentEvent();
}

class P2pShipmentListRequested extends P2pShipmentEvent {
  const P2pShipmentListRequested();
}

class P2pShipmentDetailRequested extends P2pShipmentEvent {
  final String requestId;
  const P2pShipmentDetailRequested(this.requestId);
}

class P2pShipmentCreateRequested extends P2pShipmentEvent {
  final Map<String, dynamic> requestData;
  const P2pShipmentCreateRequested(this.requestData);
}

class P2pShipmentMatchesRequested extends P2pShipmentEvent {
  final String requestId;
  const P2pShipmentMatchesRequested(this.requestId);
}

class P2pShipmentOffersRequested extends P2pShipmentEvent {
  final String requestId;
  const P2pShipmentOffersRequested(this.requestId);
}

class P2pShipmentStatusChanged extends P2pShipmentEvent {
  final String requestId;
  final ShipmentRequestStatus newStatus;
  const P2pShipmentStatusChanged({
    required this.requestId,
    required this.newStatus,
  });
}

class P2pOfferAccepted extends P2pShipmentEvent {
  final String offerId;
  final String? shipmentId;
  const P2pOfferAccepted(this.offerId, {this.shipmentId});
}

class P2pOfferRejected extends P2pShipmentEvent {
  final String offerId;
  final String? shipmentId;
  const P2pOfferRejected(this.offerId, {this.shipmentId});
}

class P2pShipmentReserveRequested extends P2pShipmentEvent {
  final String requestId;
  const P2pShipmentReserveRequested(this.requestId);
}

class P2pShipmentHandoffRequested extends P2pShipmentEvent {
  final String requestId;
  const P2pShipmentHandoffRequested(this.requestId);
}

class P2pShipmentDeliveryConfirmed extends P2pShipmentEvent {
  final String requestId;
  const P2pShipmentDeliveryConfirmed(this.requestId);
}
