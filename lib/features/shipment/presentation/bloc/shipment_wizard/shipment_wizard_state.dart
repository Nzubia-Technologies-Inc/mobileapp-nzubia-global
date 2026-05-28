import 'package:equatable/equatable.dart';
import 'package:customer_nzubia_global/features/shipment/domain/entities/cargo_item_entity.dart';

import 'package:customer_nzubia_global/features/auth/domain/entities/user_entity.dart';

enum ShipmentWizardStatus { initial, loading, success, failure }

class ShipmentWizardState extends Equatable {
  final int currentStep;
  final String origin;
  final String destination;
  final List<CargoItemEntity> cargoItems;
  final List<String> selectedServices; // Changed from String
  final List<String> tempCargoImagePaths;
  final ShipmentWizardStatus status;
  final String? errorMessage;
  final List<UserEntity> availableAgents;
  final String? selectedAgentId;
  final bool isLoadingAgents;
  final DateTime? pickupDate;
  final DateTime? deliveryDate;
  final String dimensionUnit;
  final String serviceLevel;
  final String recipientName;
  final String recipientEmail;
  final String recipientPhone;
  final String recipientAddress;
  final bool isInsuranceRequested;
  final double totalItemValue;
  final bool legalGoodsTermsAccepted;

  const ShipmentWizardState({
    this.currentStep = 0,
    this.origin = '',
    this.destination = '',
    this.cargoItems = const [],
    this.selectedServices = const ['AIR'],
    this.tempCargoImagePaths = const [],
    this.status = ShipmentWizardStatus.initial,
    this.errorMessage,
    this.availableAgents = const [],
    this.selectedAgentId,
    this.isLoadingAgents = false,
    this.pickupDate,
    this.deliveryDate,
    this.dimensionUnit = 'cm',
    this.serviceLevel = 'STANDARD',
    this.recipientName = '',
    this.recipientEmail = '',
    this.recipientPhone = '',
    this.recipientAddress = '',
    this.isInsuranceRequested = false,
    this.totalItemValue = 0,
    this.legalGoodsTermsAccepted = false,
  });

  ShipmentWizardState copyWith({
    int? currentStep,
    String? origin,
    String? destination,
    List<CargoItemEntity>? cargoItems,
    List<String>? selectedServices,
    List<String>? tempCargoImagePaths,
    ShipmentWizardStatus? status,
    String? errorMessage,
    List<UserEntity>? availableAgents,
    String? selectedAgentId,
    bool? isLoadingAgents,
    DateTime? pickupDate,
    DateTime? deliveryDate,
    String? dimensionUnit,
    String? serviceLevel,
    String? recipientName,
    String? recipientEmail,
    String? recipientPhone,
    String? recipientAddress,
    bool? isInsuranceRequested,
    double? totalItemValue,
    bool? legalGoodsTermsAccepted,
  }) {
    return ShipmentWizardState(
      currentStep: currentStep ?? this.currentStep,
      origin: origin ?? this.origin,
      destination: destination ?? this.destination,
      cargoItems: cargoItems ?? this.cargoItems,
      selectedServices: selectedServices ?? this.selectedServices,
      tempCargoImagePaths: tempCargoImagePaths ?? this.tempCargoImagePaths,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      availableAgents: availableAgents ?? this.availableAgents,
      selectedAgentId: selectedAgentId ?? this.selectedAgentId,
      isLoadingAgents: isLoadingAgents ?? this.isLoadingAgents,
      pickupDate: pickupDate ?? this.pickupDate,
      deliveryDate: deliveryDate ?? this.deliveryDate,
      dimensionUnit: dimensionUnit ?? this.dimensionUnit,
      serviceLevel: serviceLevel ?? this.serviceLevel,
      recipientName: recipientName ?? this.recipientName,
      recipientEmail: recipientEmail ?? this.recipientEmail,
      recipientPhone: recipientPhone ?? this.recipientPhone,
      recipientAddress: recipientAddress ?? this.recipientAddress,
      isInsuranceRequested: isInsuranceRequested ?? this.isInsuranceRequested,
      totalItemValue: totalItemValue ?? this.totalItemValue,
      legalGoodsTermsAccepted: legalGoodsTermsAccepted ?? this.legalGoodsTermsAccepted,
    );
  }

  @override
  List<Object?> get props => [
        currentStep,
        origin,
        destination,
        cargoItems,
        selectedServices,
        tempCargoImagePaths,
        status,
        errorMessage,
        availableAgents,
        selectedAgentId,
        isLoadingAgents,
        pickupDate,
        deliveryDate,
        dimensionUnit,
        serviceLevel,
        recipientName,
        recipientEmail,
        recipientPhone,
        recipientAddress,
        isInsuranceRequested,
        totalItemValue,
        legalGoodsTermsAccepted,
      ];
}
