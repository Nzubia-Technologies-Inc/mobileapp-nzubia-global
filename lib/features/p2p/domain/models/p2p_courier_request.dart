import 'package:customer_nzubia_global/features/p2p/domain/enums/p2p_enums.dart';
import 'package:customer_nzubia_global/features/p2p/domain/models/p2p_route.dart';

class P2pCourierRequest {
  final String id;
  final String shipmentRequestId;
  final String routeId;
  final P2pRoute? route;
  final String seekerUserId;
  final String? seekerName;
  final String? seekerEmail;
  final String? message;
  final CourierRequestStatus status;
  final String? declineReason;
  final DateTime? respondedAt;
  final DateTime? expiresAt;
  final DateTime createdAt;

  const P2pCourierRequest({
    required this.id,
    required this.shipmentRequestId,
    required this.routeId,
    this.route,
    required this.seekerUserId,
    this.seekerName,
    this.seekerEmail,
    this.message,
    required this.status,
    this.declineReason,
    this.respondedAt,
    this.expiresAt,
    required this.createdAt,
  });

  factory P2pCourierRequest.fromJson(Map<String, dynamic> json) {
    final seeker = json['seeker'] as Map<String, dynamic>?;
    return P2pCourierRequest(
      id: json['id'] as String,
      shipmentRequestId: json['shipment_request_id'] as String,
      routeId: json['route_id'] as String,
      route: json['route'] is Map<String, dynamic>
          ? P2pRoute.fromJson(json['route'] as Map<String, dynamic>)
          : null,
      seekerUserId: json['seeker_user_id'] as String,
      seekerName: seeker?['name'] as String? ??
          seeker?['first_name'] as String?,
      seekerEmail: seeker?['email'] as String?,
      message: json['message'] as String?,
      status: CourierRequestStatus.fromJson(json['status'] as String?),
      declineReason: json['decline_reason'] as String?,
      respondedAt: json['responded_at'] != null
          ? DateTime.tryParse(json['responded_at'] as String)
          : null,
      expiresAt: json['expires_at'] != null
          ? DateTime.tryParse(json['expires_at'] as String)
          : null,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }
}
