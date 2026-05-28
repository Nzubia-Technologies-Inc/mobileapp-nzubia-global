import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:customer_nzubia_global/features/auth/domain/repositories/auth_repository.dart';
import 'package:customer_nzubia_global/features/shipment/domain/repositories/shipment_repository.dart';
import 'package:customer_nzubia_global/features/shipment/domain/entities/cargo_item_entity.dart';
import 'shipment_wizard_event.dart';
import 'shipment_wizard_state.dart';

class ShipmentWizardBloc extends Bloc<ShipmentWizardEvent, ShipmentWizardState> {
  final ShipmentRepository _shipmentRepository;
  final AuthRepository _authRepository;

  ShipmentWizardBloc({
    required ShipmentRepository shipmentRepository,
    required AuthRepository authRepository,
  })  : _shipmentRepository = shipmentRepository,
        _authRepository = authRepository,
        super(const ShipmentWizardState()) {
    on<ShipmentNextStep>(_onNextStep);
    on<ShipmentPreviousStep>(_onPreviousStep);
    on<ShipmentOriginChanged>(_onOriginChanged);
    on<ShipmentDestinationChanged>(_onDestinationChanged);
    on<ShipmentCargoAdded>(_onCargoAdded);
    on<ShipmentCargoRemoved>(_onCargoRemoved);
    on<ShipmentCargoUpdated>(_onCargoUpdated);
    on<ShipmentServiceSelected>(_onServiceSelected);
    on<ShipmentCargoImageSelected>(_onCargoImageSelected);
    on<ShipmentAgentSelected>(_onAgentSelected);
    on<ShipmentAgentsRequested>(_onAgentsRequested);
    on<ShipmentSubmitted>(_onSubmitted);

    on<ShipmentDatesSelected>(_onDatesSelected);
    on<ShipmentDimensionUnitChanged>(_onDimensionUnitChanged);
    on<ShipmentServiceLevelSelected>(_onServiceLevelSelected);

    on<ShipmentRecipientInfoChanged>(_onRecipientInfoChanged);
    on<ShipmentInsuranceRequestedChanged>(_onInsuranceRequestedChanged);
    on<ShipmentTotalItemValueChanged>(_onTotalItemValueChanged);
    on<ShipmentLegalGoodsConsentChanged>(_onLegalGoodsConsentChanged);

    // Auto-fetch agents on init
    add(ShipmentAgentsRequested());
  }

  void _onTotalItemValueChanged(ShipmentTotalItemValueChanged event, Emitter<ShipmentWizardState> emit) {
    emit(state.copyWith(totalItemValue: event.value));
  }

  void _onLegalGoodsConsentChanged(ShipmentLegalGoodsConsentChanged event, Emitter<ShipmentWizardState> emit) {
    emit(state.copyWith(legalGoodsTermsAccepted: event.isAccepted));
  }

  void _onRecipientInfoChanged(ShipmentRecipientInfoChanged event, Emitter<ShipmentWizardState> emit) {
    emit(state.copyWith(
      recipientName: event.name,
      recipientEmail: event.email,
      recipientPhone: event.phone,
      recipientAddress: event.address,
    ));
  }

  void _onInsuranceRequestedChanged(ShipmentInsuranceRequestedChanged event, Emitter<ShipmentWizardState> emit) {
    emit(state.copyWith(isInsuranceRequested: event.isRequested));
  }

  void _onDatesSelected(ShipmentDatesSelected event, Emitter<ShipmentWizardState> emit) {
    emit(state.copyWith(pickupDate: event.pickupDate, deliveryDate: event.deliveryDate));
  }

  void _onDimensionUnitChanged(ShipmentDimensionUnitChanged event, Emitter<ShipmentWizardState> emit) {
    emit(state.copyWith(dimensionUnit: event.unit));
  }

  void _onServiceLevelSelected(ShipmentServiceLevelSelected event, Emitter<ShipmentWizardState> emit) {
    emit(state.copyWith(serviceLevel: event.level));
  }

  void _onNextStep(ShipmentNextStep event, Emitter<ShipmentWizardState> emit) {
    // Current Steps: 0 (Loc), 1 (Recipient - NEW), 2 (Cargo), 3 (Service), 4 (Agent) - Total 5 steps?
    // Let's recheck the step flow design.
    // Ideally:
    // 0: Location (Origin, Dest, Date)
    // 1: Recipient (Name, contact)
    // 2: Cargo (Items, images)
    // 3: Service (Level, Types, Agent)
    // 4: Review? Or submit at 3?

    // Existing code had limit < 3.
    // If we add Recipient as Step 1, then:
    // 0 -> 1 (Recipient)
    // 1 -> 2 (Cargo)
    // 2 -> 3 (Service)
    // 3 -> 4 (Submit?)

    if (state.currentStep < 3) { // Let's keep 4 steps total: 0, 1, 2, 3. Max index 3.
       // Wait, if we add a whole screen it might be 4.
       // Let's assume we insert Recipient at Step 1.
       // Old: 0(Loc)->1(Cargo)->2(Service/Agent) -> Submit.
       // New: 0(Loc)->1(Recipient)->2(Cargo)->3(Service/Agent) -> Submit.

      final nextStep = state.currentStep + 1;
      emit(state.copyWith(currentStep: nextStep));

      // If moving to Agent Step (Now 3), refresh agents
      if (nextStep == 3) {
        add(ShipmentAgentsRequested());
      }
    }
  }

  void _onPreviousStep(ShipmentPreviousStep event, Emitter<ShipmentWizardState> emit) {
    if (state.currentStep > 0) {
      emit(state.copyWith(currentStep: state.currentStep - 1));
    }
  }

  void _onOriginChanged(ShipmentOriginChanged event, Emitter<ShipmentWizardState> emit) {
    emit(state.copyWith(origin: event.origin));
  }

  void _onDestinationChanged(ShipmentDestinationChanged event, Emitter<ShipmentWizardState> emit) {
    emit(state.copyWith(destination: event.destination));
  }

  void _onCargoAdded(ShipmentCargoAdded event, Emitter<ShipmentWizardState> emit) {
    final List<CargoItemEntity> updatedList = List.from(state.cargoItems)..add(event.item);
    emit(state.copyWith(cargoItems: updatedList, tempCargoImagePaths: []));
  }

  void _onCargoRemoved(ShipmentCargoRemoved event, Emitter<ShipmentWizardState> emit) {
    final List<CargoItemEntity> updatedList = List.from(state.cargoItems)..removeAt(event.index);
    emit(state.copyWith(cargoItems: updatedList));
  }

  void _onCargoUpdated(ShipmentCargoUpdated event, Emitter<ShipmentWizardState> emit) {
    final List<CargoItemEntity> updatedList = List.from(state.cargoItems);
    updatedList[event.index] = event.item;
    emit(state.copyWith(cargoItems: updatedList, tempCargoImagePaths: []));
  }

  void _onCargoImageSelected(ShipmentCargoImageSelected event, Emitter<ShipmentWizardState> emit) {
     emit(state.copyWith(tempCargoImagePaths: event.imagePaths));
  }

  void _onServiceSelected(ShipmentServiceSelected event, Emitter<ShipmentWizardState> emit) {
    final currentServices = List<String>.from(state.selectedServices);
    if (currentServices.contains(event.serviceLevel)) {
      currentServices.remove(event.serviceLevel);
    } else {
      currentServices.add(event.serviceLevel);
    }
    emit(state.copyWith(selectedServices: currentServices));
    add(ShipmentAgentsRequested());
  }

  void _onAgentSelected(ShipmentAgentSelected event, Emitter<ShipmentWizardState> emit) {
    emit(state.copyWith(selectedAgentId: event.agentId));
  }

  Future<void> _onAgentsRequested(ShipmentAgentsRequested event, Emitter<ShipmentWizardState> emit) async {
    emit(state.copyWith(isLoadingAgents: true));
    try {
      final allAgents = await _authRepository.getAgents();

      final isAir = state.selectedServices.contains('AIR');
      final isSea = state.selectedServices.contains('SEA');

      var filteredAgents = allAgents.where((agent) {
        final specs = agent.specialization?.map((s) => s.toLowerCase()).toList() ?? [];
        if (specs.isEmpty) return true;

        bool matches = false;
        if (isAir) {
          matches = matches || specs.any((s) => s.contains('air') || s.contains('express') || s.contains('plane'));
        }
        if (isSea) {
          matches = matches || specs.any((s) => s.contains('sea') || s.contains('ocean') || s.contains('ship') || s.contains('container'));
        }
        // If neither selected (edge case), show all? Or none? checking matches.
        if (!isAir && !isSea) return true; // Show all if nothing selected

        return matches;
      }).toList();

      if (filteredAgents.isEmpty && allAgents.isNotEmpty) {
        filteredAgents = allAgents;
      }

      final originLower = state.origin.toLowerCase();

      filteredAgents.sort((a, b) {
        final aRegions = a.serviceRegions?.map((r) => r.toLowerCase()).toList() ?? [];
        final bRegions = b.serviceRegions?.map((r) => r.toLowerCase()).toList() ?? [];

        final aMatchesLoc = aRegions.any((r) => originLower.contains(r));
        final bMatchesLoc = bRegions.any((r) => originLower.contains(r));

        if (aMatchesLoc && !bMatchesLoc) return -1;
        if (!aMatchesLoc && bMatchesLoc) return 1;

        if (a.isVerified && !b.isVerified) return -1;
        if (!a.isVerified && b.isVerified) return 1;

        final aRating = a.rating ?? 0.0;
        final bRating = b.rating ?? 0.0;
        return bRating.compareTo(aRating);
      });

      emit(state.copyWith(availableAgents: filteredAgents, isLoadingAgents: false));
    } catch (e) {
      emit(state.copyWith(isLoadingAgents: false, availableAgents: []));
    }
  }

  Future<void> _onSubmitted(ShipmentSubmitted event, Emitter<ShipmentWizardState> emit) async {
    emit(state.copyWith(status: ShipmentWizardStatus.loading));
    try {
      // Upload Images first
      final List<CargoItemEntity> processedItems = [];
      for (final item in state.cargoItems) {
        final List<String> uploadedUrls = [];
        for (final path in item.imageUrls) {
           if (path.startsWith('http') || path.startsWith('https')) {
             uploadedUrls.add(path);
           } else {
             try {
               final url = await _shipmentRepository.uploadImage(path);
               uploadedUrls.add(url);
             } catch (imageError) {
               // Provide more specific error for image upload failures
               throw Exception('Failed to upload image: ${path.split('/').last}. The image may be too large or corrupted. Please try a different image.');
             }
           }
        }
        processedItems.add(item.copyWith(imageUrls: uploadedUrls));
      }

      await _shipmentRepository.createShipment(
        origin: state.origin,
        destination: state.destination,
        items: processedItems,
        serviceLevel: state.serviceLevel,
        serviceTypes: state.selectedServices,
        pickupDate: state.pickupDate,
        deliveryDate: state.deliveryDate,
        dimensionUnit: state.dimensionUnit,
        agentId: state.selectedAgentId,
        recipientName: state.recipientName,
        recipientEmail: state.recipientEmail,
        recipientPhone: state.recipientPhone,
        recipientAddress: state.recipientAddress,
        isInsuranceRequested: state.isInsuranceRequested,
        totalItemValue: state.totalItemValue,
        legalGoodsTermsAccepted: state.legalGoodsTermsAccepted,
      );
      emit(state.copyWith(status: ShipmentWizardStatus.success));
    } catch (e) {
      String errorMessage = e.toString();

      // Clean up error message format
      if (errorMessage.startsWith('Exception: ')) {
        errorMessage = errorMessage.substring(11); // Remove 'Exception: ' prefix
      }

      emit(state.copyWith(
        status: ShipmentWizardStatus.failure,
        errorMessage: errorMessage,
      ));
    }
  }
}
