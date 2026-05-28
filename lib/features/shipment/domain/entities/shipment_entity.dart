import 'package:equatable/equatable.dart';
import 'cargo_item_entity.dart';
import 'shipment_event_entity.dart';
import 'quote_entity.dart';
import 'package:customer_nzubia_global/features/payment/domain/entities/payment_entity.dart';
import 'review_entity.dart';

class ShipmentEntity extends Equatable {
  final String id;
  final String originAddress;
  final String destinationAddress;
  final List<CargoItemEntity> cargoItems;
  final String serviceLevel; 
  final String status; 
  final double? estimatedPrice;
  final String? agentId;
  final List<ShipmentEventEntity> events;
  final DateTime? pickupDate;
  final DateTime? deliveryDate;
  final String customerId;
  final RecipientEntity? recipient;
  final String? pickupPin;
  final List<QuoteEntity> quotes;
  final List<PaymentEntity> payments;
  final List<ReviewEntity> reviews;
  final String? trackingNumber;
  final bool customerConfirmedDelivery;
  final Map<String, dynamic> additionalServices;
  final bool insuranceRequested;
  final double totalItemValue;
  final List<String> pickupImages;
  final List<String> podImages;
  final List<Map<String, dynamic>> documents;
  final DateTime? recipientInviteSentAt;
  final bool recipientAddressVerified;

  const ShipmentEntity({
    required this.id,
    required this.originAddress,
    required this.destinationAddress,
    required this.cargoItems,
    required this.serviceLevel,
    required this.status,
    required this.customerId,
    this.estimatedPrice,
    this.agentId,
    this.events = const [],
    this.quotes = const [],
    this.payments = const [],
    this.reviews = const [],
    this.pickupDate,
    this.deliveryDate,
    this.recipient,
    this.pickupPin,
    this.trackingNumber,
    this.insuranceRequested = false,
    this.totalItemValue = 0,
    this.customerConfirmedDelivery = false,
    this.additionalServices = const {},
    this.pickupImages = const [],
    this.podImages = const [],
    this.documents = const [],
    this.recipientInviteSentAt,
    this.recipientAddressVerified = false,
  });

  String get originCity => originAddress.split(',').first.trim();
  String get destinationCountry => destinationAddress.split(',').last.trim();
  String get cargoDescription => cargoItems.isNotEmpty ? cargoItems.first.description : 'Unknown Cargo';

  @override
  List<Object?> get props => [
        id,
        originAddress,
        destinationAddress,
        cargoItems,
        serviceLevel,
        status,
        estimatedPrice,
        agentId,
        events,
        quotes,
        payments,
        reviews,
        pickupDate,
        deliveryDate,
        recipient,
        pickupPin,
        customerId,
        trackingNumber,
        additionalServices,
        insuranceRequested,
        totalItemValue,
        pickupImages,
        podImages,
        documents,
        recipientInviteSentAt,
        recipientAddressVerified,
      ];
}

class RecipientEntity extends Equatable {
  final String name;
  final String email;
  final String phone;
  final String address;

  const RecipientEntity({
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
  });

  @override
  List<Object?> get props => [name, email, phone, address];
}
