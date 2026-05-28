// Contract tests for the P2P Flutter models. Every JSON shape here is a
// hand-typed snapshot of what the backend's `mappers.ts` produces — keep this
// file in sync with `backend-nzubia-global/src/p2p-shipping/tests/mappers.spec.ts`.

import 'package:flutter_test/flutter_test.dart';

import 'package:customer_nzubia_global/features/p2p/domain/enums/p2p_enums.dart';
import 'package:customer_nzubia_global/features/p2p/domain/models/p2p_courier_profile.dart';
import 'package:customer_nzubia_global/features/p2p/domain/models/p2p_offer.dart';
import 'package:customer_nzubia_global/features/p2p/domain/models/p2p_route.dart';
import 'package:customer_nzubia_global/features/p2p/domain/models/p2p_review.dart';
import 'package:customer_nzubia_global/features/p2p/domain/models/p2p_shipment_request.dart';
import 'package:customer_nzubia_global/features/p2p/domain/models/p2p_waiver.dart';

void main() {
  group('P2pCourierProfile.fromJson', () {
    test('parses canonical backend output', () {
      final json = {
        'id': 'cp-1',
        'user_id': 'user-1',
        'user': {
          'id': 'user-1',
          'email': 'a@b.c',
          'full_name': null,
        },
        'verification_state': 'ACTIVE',
        'rating': 4.5,
        'is_active': true,
        'home_latitude': 5.6,
        'home_longitude': -0.18,
        'service_radius_km': 50,
        'accepted_categories': ['DOCUMENTS', 'CLOTHING'],
        'payout_ready': false,
        'reputation_summary': 'Reliable',
        'created_at': '2026-05-01T12:00:00.000Z',
        'updated_at': '2026-05-01T12:00:00.000Z',
      };

      final p = P2pCourierProfile.fromJson(json);
      expect(p.id, 'cp-1');
      expect(p.userId, 'user-1');
      expect(p.verificationState, CourierVerificationState.active);
      expect(p.rating, 4.5);
      expect(p.isActive, isTrue);
      expect(p.homeLatitude, 5.6);
      expect(p.serviceRadiusKm, 50);
      expect(p.acceptedCategories.length, 2);
      expect(p.acceptedCategories.first, ItemCategory.documents);
      expect(p.payoutReady, isFalse);
      expect(p.user?.email, 'a@b.c');
      expect(p.createdAt, isNotNull);
    });

    test('handles missing optional fields', () {
      final p = P2pCourierProfile.fromJson({
        'id': 'cp-2',
        'user_id': 'user-2',
        'user': null,
        'verification_state': 'DRAFT',
        'rating': 0,
        'is_active': false,
        'home_latitude': null,
        'home_longitude': null,
        'service_radius_km': null,
        'accepted_categories': null,
        'payout_ready': false,
        'reputation_summary': null,
        'created_at': null,
        'updated_at': null,
      });
      expect(p.user, isNull);
      expect(p.acceptedCategories, isEmpty);
      expect(p.verificationState, CourierVerificationState.draft);
    });
  });

  group('P2pRoute.fromJson', () {
    test('parses route with nested courier profile', () {
      final json = {
        'id': 'r1',
        'courier_profile_id': 'cp-1',
        'courier_profile': null,
        'destination_country': 'US',
        'destination_city': 'New York',
        'departure_date': '2026-06-01T00:00:00.000Z',
        'return_date': null,
        'pickup_origin': 'Accra, Ghana',
        'pickup_latitude': 5.6,
        'pickup_longitude': -0.18,
        'current_latitude': null,
        'current_longitude': null,
        'capacity_kg': 10,
        'accepted_item_categories': ['ELECTRONICS'],
        'route_notes': null,
        'status': 'PUBLISHED',
        'created_at': '2026-05-01T12:00:00.000Z',
        'updated_at': '2026-05-01T12:00:00.000Z',
      };
      final r = P2pRoute.fromJson(json);
      expect(r.id, 'r1');
      expect(r.courierProfileId, 'cp-1');
      expect(r.destinationCountry, 'US');
      expect(r.destinationCity, 'New York');
      expect(r.capacityKg, 10);
      expect(r.pickupOrigin, 'Accra, Ghana');
      expect(r.status, RouteStatus.published);
      expect(r.acceptedItemCategories.first, ItemCategory.electronics);
    });
  });

  group('P2pShipmentRequest.fromJson', () {
    test('parses with dimensions and metadata', () {
      final json = {
        'id': 's1',
        'seeker_user_id': 'u1',
        'seeker': {'id': 'u1', 'email': 'a@b.c', 'full_name': null},
        'origin_address': '22 Market St',
        'origin_latitude': 5.5,
        'origin_longitude': -0.2,
        'destination_country': 'US',
        'destination_city': 'New York',
        'item_category': 'CLOTHING',
        'item_description': 'A coat',
        'dimensions_cm': {'length': 10, 'width': 5, 'height': 3},
        'weight_kg': 2,
        'declared_value_usd': 120,
        'photo_urls': null,
        'status': 'OPEN',
        'match_metadata': null,
        'chat_thread_id': null,
        'created_at': '2026-05-01T12:00:00.000Z',
        'updated_at': '2026-05-01T12:00:00.000Z',
      };
      final s = P2pShipmentRequest.fromJson(json);
      expect(s.id, 's1');
      expect(s.seekerUserId, 'u1');
      expect(s.originAddress, '22 Market St');
      expect(s.itemCategory, ItemCategory.clothing);
      expect(s.weightKg, 2);
      expect(s.declaredValueUsd, 120);
      expect(s.dimensionsCm['length'], 10);
      expect(s.status, ShipmentRequestStatus.open);
      expect(s.photoUrls, isEmpty);
    });

    test('parses transitional statuses', () {
      for (final status in [
        'DRAFT',
        'OPEN',
        'MATCHED',
        'RESERVED',
        'HANDOFF_PENDING',
        'IN_TRANSIT',
        'DELIVERED',
        'COMPLETED',
        'CANCELLED',
        'DISPUTED',
        'REJECTED',
      ]) {
        final s = P2pShipmentRequest.fromJson({
          'id': 's',
          'seeker_user_id': 'u',
          'origin_address': '',
          'destination_country': 'US',
          'destination_city': 'NYC',
          'item_category': 'OTHER',
          'item_description': '',
          'weight_kg': 1,
          'declared_value_usd': 1,
          'status': status,
        });
        expect(s.status.toJson(), status);
      }
    });
  });

  group('P2pOffer.fromJson', () {
    test('parses with nullable amounts', () {
      final json = {
        'id': 'o1',
        'shipment_request_id': 's1',
        'route_id': 'r1',
        'route': null,
        'offer_amount_usd': 45,
        'status': 'PROPOSED',
        'accepted_at': null,
        'rejected_at': null,
        'expires_at': null,
        'payment_reference': null,
        'payment_status': null,
        'created_at': '2026-05-01T12:00:00.000Z',
        'updated_at': '2026-05-01T12:00:00.000Z',
      };
      final o = P2pOffer.fromJson(json);
      expect(o.status, OfferStatus.proposed);
      expect(o.offerAmountUsd, 45);
      expect(o.acceptedAt, isNull);
    });
  });

  group('P2pReview.fromJson', () {
    test('parses with trust flags', () {
      final r = P2pReview.fromJson({
        'id': 'r1',
        'reviewer_user_id': 'u1',
        'reviewed_user_id': 'u2',
        'shipment_request_id': 's1',
        'rating': 5,
        'comment': 'Great',
        'trust_flags': {'onTime': true},
        'created_at': '2026-05-01T12:00:00.000Z',
      });
      expect(r.rating, 5);
      expect(r.reviewerUserId, 'u1');
      expect(r.reviewedUserId, 'u2');
      expect(r.trustFlags?['onTime'], isTrue);
    });
  });

  group('P2pWaiverPreview.fromJson', () {
    test('hydrates acknowledge_flags into typed rules', () {
      final preview = P2pWaiverPreview.fromJson({
        'shipment_id': 's1',
        'terms_version': 'v1',
        'waiver_text': 'I agree...',
        'acknowledge_flags': [
          'NO_PROHIBITED_ITEMS',
          'ACCURATE_VALUE_DECLARED',
          'CUSTOMS_RESPONSIBILITY',
          'MARKETPLACE_DISCLAIMER',
        ],
      });
      expect(preview.shipmentId, 's1');
      expect(preview.rules.length, 4);
      expect(preview.rules.first.flag, 'NO_PROHIBITED_ITEMS');
      expect(preview.rules.first.title, isNotEmpty);
    });
  });

  group('P2pWaiver.fromJson', () {
    test('round-trips status', () {
      final w = P2pWaiver.fromJson({
        'id': 'w1',
        'shipment_request_id': 's1',
        'signed_by_user_id': 'u1',
        'terms_version': 'v1',
        'acknowledged_flags': ['NO_PROHIBITED_ITEMS'],
        'proof_metadata': null,
        'status': 'ACCEPTED',
        'created_at': '2026-05-01T12:00:00.000Z',
        'updated_at': '2026-05-01T12:00:00.000Z',
      });
      expect(w.status, WaiverStatus.accepted);
      expect(w.isAccepted, isTrue);
      expect(w.acknowledgedFlags, contains('NO_PROHIBITED_ITEMS'));
    });
  });

  group('P2pComplianceRules.fromJson', () {
    test('parses flat snake_case rules', () {
      final rules = P2pComplianceRules.fromJson({
        'platform_fee_percent': 5,
        'default_radius_km': 25,
        'waiver_version': 'v1',
        'max_weight_kg': 30,
        'max_declared_value_usd': 5000,
        'restricted_categories': ['MEDICINE'],
      });
      expect(rules.platformFeePercent, 5);
      expect(rules.defaultRadiusKm, 25);
      expect(rules.waiverVersion, 'v1');
      expect(rules.maxWeightKg, 30);
      expect(rules.maxDeclaredValueUsd, 5000);
      expect(rules.restrictedCategories, ['MEDICINE']);
    });
  });

  group('Enum coverage', () {
    test('CourierVerificationState handles every backend value', () {
      const all = [
        'DRAFT',
        'SUBMITTED',
        'PENDING_REVIEW',
        'APPROVED',
        'ACTIVE',
        'SUSPENDED',
        'REJECTED',
      ];
      for (final v in all) {
        expect(CourierVerificationState.fromJson(v).toJson(), v);
      }
    });

    test('RouteStatus handles every backend value', () {
      const all = ['DRAFT', 'PUBLISHED', 'PAUSED', 'EXPIRED', 'REMOVED'];
      for (final v in all) {
        expect(RouteStatus.fromJson(v).toJson(), v);
      }
    });

    test('OfferStatus handles every backend value', () {
      const all = [
        'PROPOSED',
        'ACCEPTED',
        'REJECTED',
        'EXPIRED',
        'CANCELLED',
      ];
      for (final v in all) {
        expect(OfferStatus.fromJson(v).toJson(), v);
      }
    });

    test('ItemCategory handles every backend value', () {
      const all = [
        'DOCUMENTS',
        'CLOTHING',
        'ELECTRONICS',
        'ACCESSORIES',
        'FOOD',
        'MEDICINE',
        'OTHER',
      ];
      for (final v in all) {
        expect(ItemCategory.fromJson(v).toJson(), v);
      }
    });
  });
}
