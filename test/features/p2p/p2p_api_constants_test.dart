// Endpoint contract tests for the Flutter P2P API constants. These freeze the
// path strings the client uses against the backend — any mismatch with
// `backend-nzubia-global/src/p2p-shipping/*.controller.ts` will fail here.

import 'package:flutter_test/flutter_test.dart';
import 'package:customer_nzubia_global/core/constants/api_constants.dart';

void main() {
  group('P2P API constants — courier paths', () {
    test('matches backend CourierController routes', () {
      expect(ApiConstants.p2pCouriers, '/p2p/couriers');
      expect(ApiConstants.p2pCourierMe, '/p2p/couriers/me');
      expect(
        ApiConstants.p2pCourierMeAvailability,
        '/p2p/couriers/me/availability',
      );
      expect(ApiConstants.p2pCourierMeStatus, '/p2p/couriers/me/status');
      expect(ApiConstants.p2pCourierById('abc'), '/p2p/couriers/abc');
      expect(
        ApiConstants.p2pCourierReputation('abc'),
        '/p2p/couriers/abc/reputation',
      );
    });
  });

  group('P2P API constants — route paths', () {
    test('matches backend RouteController routes', () {
      expect(ApiConstants.p2pRoutes, '/p2p/routes');
      expect(ApiConstants.p2pRoutesFeed, '/p2p/routes/feed');
      expect(ApiConstants.p2pRoutesMine, '/p2p/routes/mine');
      expect(ApiConstants.p2pRouteById('r1'), '/p2p/routes/r1');
      expect(ApiConstants.p2pRouteStatus('r1'), '/p2p/routes/r1/status');
    });
  });

  group('P2P API constants — shipment paths', () {
    test('matches backend ShipmentController routes', () {
      expect(ApiConstants.p2pShipments, '/p2p/shipments');
      expect(ApiConstants.p2pShipmentById('s1'), '/p2p/shipments/s1');
      expect(
        ApiConstants.p2pShipmentStatus('s1'),
        '/p2p/shipments/s1/status',
      );
      expect(ApiConstants.p2pShipmentMatch('s1'), '/p2p/shipments/s1/match');
      expect(
        ApiConstants.p2pShipmentOffers('s1'),
        '/p2p/shipments/s1/offers',
      );
      expect(
        ApiConstants.p2pShipmentReserve('s1'),
        '/p2p/shipments/s1/reserve',
      );
      expect(
        ApiConstants.p2pShipmentHandoff('s1'),
        '/p2p/shipments/s1/handoff',
      );
      expect(
        ApiConstants.p2pShipmentDeliver('s1'),
        '/p2p/shipments/s1/deliver',
      );
    });

    test('offer accept/reject paths nest under shipments/offers/*', () {
      expect(
        ApiConstants.p2pOfferAccept('o1'),
        '/p2p/shipments/offers/o1/accept',
      );
      expect(
        ApiConstants.p2pOfferReject('o1'),
        '/p2p/shipments/offers/o1/reject',
      );
    });
  });

  group('P2P API constants — compliance & reviews', () {
    test('matches backend ComplianceController routes', () {
      expect(ApiConstants.p2pComplianceRules, '/p2p/compliance/rules');
      expect(
        ApiConstants.p2pComplianceRestricted,
        '/p2p/compliance/restricted',
      );
      expect(
        ApiConstants.p2pComplianceWaiver('s1'),
        '/p2p/compliance/waiver/s1',
      );
      expect(
        ApiConstants.p2pComplianceWaiverAccept('s1'),
        '/p2p/compliance/waiver/s1/accept',
      );
      expect(
        ApiConstants.p2pComplianceStatus('s1'),
        '/p2p/compliance/status/s1',
      );
    });

    test('matches backend ReviewController routes', () {
      expect(ApiConstants.p2pReviews, '/p2p/reviews');
      expect(
        ApiConstants.p2pReviewsForCourier('c1'),
        '/p2p/reviews/courier/c1',
      );
    });
  });
}
