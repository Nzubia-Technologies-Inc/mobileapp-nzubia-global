part of 'p2p_shipment_bloc.dart';

enum P2pShipmentStatus { initial, loading, success, failure }

class P2pShipmentState {
  final P2pShipmentStatus status;
  final List<P2pShipmentRequest> requests;
  final P2pShipmentRequest? selectedRequest;
  final List<P2pOffer> offers;
  final List<P2pRouteFeedItem> matches;

  /// Courier requests the seeker sent for the currently selected shipment.
  final List<P2pCourierRequest> courierRequests;
  final String? errorMessage;

  const P2pShipmentState({
    this.status = P2pShipmentStatus.initial,
    this.requests = const [],
    this.selectedRequest,
    this.offers = const [],
    this.matches = const [],
    this.courierRequests = const [],
    this.errorMessage,
  });

  P2pShipmentState copyWith({
    P2pShipmentStatus? status,
    List<P2pShipmentRequest>? requests,
    P2pShipmentRequest? selectedRequest,
    List<P2pOffer>? offers,
    List<P2pRouteFeedItem>? matches,
    List<P2pCourierRequest>? courierRequests,
    String? errorMessage,
  }) {
    return P2pShipmentState(
      status: status ?? this.status,
      requests: requests ?? this.requests,
      selectedRequest: selectedRequest ?? this.selectedRequest,
      offers: offers ?? this.offers,
      matches: matches ?? this.matches,
      courierRequests: courierRequests ?? this.courierRequests,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
