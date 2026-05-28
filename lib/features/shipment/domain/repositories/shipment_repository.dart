import 'package:customer_nzubia_global/core/network/paginated_result.dart';
import 'package:customer_nzubia_global/features/shipment/domain/entities/shipment_entity.dart';
import 'package:customer_nzubia_global/features/shipment/domain/entities/cargo_item_entity.dart';

abstract class ShipmentRepository {
  Future<ShipmentEntity> createShipment({
    required String origin,
    required String destination,
    required List<CargoItemEntity> items,
    required String serviceLevel,
    required List<String> serviceTypes,
    DateTime? pickupDate,
    DateTime? deliveryDate,
    String dimensionUnit = 'cm',
    String? agentId,
    String? recipientName,
    String? recipientEmail,
    String? recipientPhone,
    String? recipientAddress,
    bool isInsuranceRequested = false,
    double totalItemValue = 0,
    required bool legalGoodsTermsAccepted,
  });

  Future<ShipmentEntity> updateShipment(String id, {List<CargoItemEntity>? items});
  Future<void> deleteShipment(String id);
  Future<ShipmentEntity> getShipment(String id);
  Future<Map<String, dynamic>> trackShipment(String trackingNumber);

  Future<PaginatedResult<ShipmentEntity>> getShipments({
    String? status,
    String? searchQuery,
    int page = 1,
    int limit = 10,
  });

  Future<String> uploadImage(String filePath);
  Future<void> uploadDocument(String shipmentId, String filePath, String type);

  Future<void> updateStatus(String id, String status, {String? description, List<String>? imageUrls, String? pickupPin, String? actor});
  Future<void> requestInfo(String id, String message);
  Future<void> submitReview(String shipmentId, int rating, String comment);
  Future<void> confirmReceipt(String id);
}
