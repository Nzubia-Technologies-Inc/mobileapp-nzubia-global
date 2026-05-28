import 'package:equatable/equatable.dart';
import 'package:customer_nzubia_global/features/shipment/domain/entities/cargo_item_entity.dart';

abstract class ShipmentWizardEvent extends Equatable {
  const ShipmentWizardEvent();

  @override
  List<Object?> get props => [];
}

class ShipmentNextStep extends ShipmentWizardEvent {}

class ShipmentPreviousStep extends ShipmentWizardEvent {}

class ShipmentOriginChanged extends ShipmentWizardEvent {
  final String origin;
  const ShipmentOriginChanged(this.origin);
  @override
  List<Object> get props => [origin];
}

class ShipmentDestinationChanged extends ShipmentWizardEvent {
  final String destination;
  const ShipmentDestinationChanged(this.destination);
  @override
  List<Object> get props => [destination];
}

class ShipmentCargoAdded extends ShipmentWizardEvent {
  final CargoItemEntity item;
  const ShipmentCargoAdded(this.item);
  @override
  List<Object> get props => [item];
}

class ShipmentCargoRemoved extends ShipmentWizardEvent {
  final int index;
  const ShipmentCargoRemoved(this.index);
  @override
  List<Object> get props => [index];
}

class ShipmentCargoUpdated extends ShipmentWizardEvent {
  final int index;
  final CargoItemEntity item;
  const ShipmentCargoUpdated(this.index, this.item);
  @override
  List<Object> get props => [index, item];
}

class ShipmentServiceSelected extends ShipmentWizardEvent {
  final String serviceLevel;
  const ShipmentServiceSelected(this.serviceLevel);
  @override
  List<Object> get props => [serviceLevel];
}

class ShipmentCargoImageSelected extends ShipmentWizardEvent {
  final List<String> imagePaths;
  const ShipmentCargoImageSelected(this.imagePaths);
  @override
  List<Object> get props => [imagePaths];
}

class ShipmentAgentSelected extends ShipmentWizardEvent {
  final String agentId;
  const ShipmentAgentSelected(this.agentId);
  @override
  List<Object> get props => [agentId];
}

class ShipmentAgentsRequested extends ShipmentWizardEvent {}

class ShipmentSubmitted extends ShipmentWizardEvent {}

class ShipmentDatesSelected extends ShipmentWizardEvent {
  final DateTime? pickupDate;
  final DateTime? deliveryDate;
  const ShipmentDatesSelected({this.pickupDate, this.deliveryDate});
  @override
  List<Object?> get props => [pickupDate, deliveryDate];
}

class ShipmentDimensionUnitChanged extends ShipmentWizardEvent {
  final String unit;
  const ShipmentDimensionUnitChanged(this.unit);
  @override
  List<Object> get props => [unit];
}

class ShipmentServiceLevelSelected extends ShipmentWizardEvent {
  final String level;
  const ShipmentServiceLevelSelected(this.level);
  @override
  List<Object> get props => [level];
}

class ShipmentRecipientInfoChanged extends ShipmentWizardEvent {
  final String name;
  final String email;
  final String phone;
  final String address;
  const ShipmentRecipientInfoChanged({
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
  });
  @override
  List<Object> get props => [name, email, phone, address];
}

class ShipmentInsuranceRequestedChanged extends ShipmentWizardEvent {
  final bool isRequested;
  const ShipmentInsuranceRequestedChanged(this.isRequested);
  @override
  List<Object> get props => [isRequested];
}

class ShipmentTotalItemValueChanged extends ShipmentWizardEvent {
  final double value;
  const ShipmentTotalItemValueChanged(this.value);
  @override
  List<Object> get props => [value];
}

class ShipmentLegalGoodsConsentChanged extends ShipmentWizardEvent {
  final bool isAccepted;
  const ShipmentLegalGoodsConsentChanged(this.isAccepted);
  @override
  List<Object> get props => [isAccepted];
}
