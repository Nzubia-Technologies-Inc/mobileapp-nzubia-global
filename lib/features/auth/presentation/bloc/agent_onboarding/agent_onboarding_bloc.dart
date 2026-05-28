import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:customer_nzubia_global/features/auth/domain/repositories/auth_repository.dart';
import 'agent_onboarding_event.dart';
import 'agent_onboarding_state.dart';

class AgentOnboardingBloc extends Bloc<AgentOnboardingEvent, AgentOnboardingState> {
  final AuthRepository _authRepository;

  AgentOnboardingBloc({required AuthRepository authRepository, dynamic initialUser})
      : _authRepository = authRepository,
        super(AgentOnboardingState.initial(initialUser)) {
    on<AgentTypeChanged>(_onTypeChanged);
    on<OnboardingFieldChanged>(_onFieldChanged);
    on<OnboardingFilePicked>(_onFilePicked);
    on<OnboardingSubmitted>(_onSubmitted);
    on<InitializeOnboarding>(_onInitialize);
  }

  void _onInitialize(InitializeOnboarding event, Emitter<AgentOnboardingState> emit) {
    final user = event.user;
    if (user == null) return;

    emit(state.copyWith(
      agentType: user.agentType ?? 'INDIVIDUAL',
      companyName: user.companyName ?? '',
      address: user.address ?? '',
      businessRegNumber: user.businessRegNumber ?? '',
      taxId: user.taxId ?? '',
      licenseNumber: user.licenseNumber ?? '',
      idType: user.idType ?? 'PASSPORT',
      idNumber: user.idNumber ?? '',
      yearsInBusiness: user.yearsInBusiness ?? 0,
      fleetSize: user.fleetSize ?? 0,
      serviceRadiusKm: user.serviceRadiusKm ?? 0,
      cargoSpecializations: user.specialization ?? [],
      serviceRegions: user.serviceRegions ?? [],
      idDocumentPath: user.idDocumentUrl ?? '',
      selfiePath: user.selfieUrl ?? '',
      insuranceCertificateUrl: user.insuranceCertificateUrl ?? '',
    ));
  }

  void _onTypeChanged(AgentTypeChanged event, Emitter<AgentOnboardingState> emit) {
    emit(state.copyWith(agentType: event.type));
  }

  void _onFieldChanged(OnboardingFieldChanged event, Emitter<AgentOnboardingState> emit) {
    switch (event.field) {
      case 'companyName': emit(state.copyWith(companyName: event.value)); break;
      case 'businessRegNumber': emit(state.copyWith(businessRegNumber: event.value)); break;
      case 'taxId': emit(state.copyWith(taxId: event.value)); break;
      case 'licenseNumber': emit(state.copyWith(licenseNumber: event.value)); break;
      case 'idType': emit(state.copyWith(idType: event.value)); break;
      case 'idNumber': emit(state.copyWith(idNumber: event.value)); break;
      case 'address': emit(state.copyWith(address: event.value)); break;
      case 'yearsInBusiness': emit(state.copyWith(yearsInBusiness: int.tryParse(event.value.toString()) ?? 0)); break;
      case 'fleetSize': emit(state.copyWith(fleetSize: int.tryParse(event.value.toString()) ?? 0)); break;
      case 'cargoSpecializations': emit(state.copyWith(cargoSpecializations: event.value as List<String>)); break;
      case 'serviceRegions': emit(state.copyWith(serviceRegions: event.value as List<String>)); break;
      case 'baseLat': emit(state.copyWith(baseLat: double.tryParse(event.value.toString()))); break;
      case 'baseLng': emit(state.copyWith(baseLng: double.tryParse(event.value.toString()))); break;
      case 'serviceRadiusKm': emit(state.copyWith(serviceRadiusKm: int.tryParse(event.value.toString()))); break;
    }
  }

  void _onFilePicked(OnboardingFilePicked event, Emitter<AgentOnboardingState> emit) {
    if (event.field == 'id_document') {
      emit(state.copyWith(idDocumentPath: event.path));
    } else if (event.field == 'selfie') {
      emit(state.copyWith(selfiePath: event.path));
    } else if (event.field == 'insurance') {
      emit(state.copyWith(insuranceCertificateUrl: event.path)); // Treating as local path
    }
  }

  Future<void> _onSubmitted(OnboardingSubmitted event, Emitter<AgentOnboardingState> emit) async {
    emit(state.copyWith(status: AgentOnboardingStatus.loading));
    try {
      if (state.agentType == 'BUSINESS') {
        if (state.companyName.isEmpty) throw Exception('Company Name is required');
        if (state.businessRegNumber.isEmpty) throw Exception('Business Registration Number is required');
      } else {
        if (state.idDocumentPath.isEmpty) throw Exception('ID Document is required');
        if (state.selfiePath.isEmpty) throw Exception('Selfie is required');
      }
      if (state.serviceRegions.isEmpty) throw Exception('At least 1 Service Region is required');

      await _authRepository.submitAgentKYC(
        agentType: state.agentType,
        companyName: state.companyName.isNotEmpty ? state.companyName : null,
        businessRegNumber: state.businessRegNumber.isNotEmpty ? state.businessRegNumber : null,
        taxId: state.taxId.isNotEmpty ? state.taxId : null,
        licenseNumber: state.licenseNumber.isNotEmpty ? state.licenseNumber : null,
        insuranceCertificateUrl: state.insuranceCertificateUrl.isNotEmpty ? state.insuranceCertificateUrl : null,
        idType: state.idType,
        idNumber: state.idNumber.isNotEmpty ? state.idNumber : null,
        idDocumentUrl: state.idDocumentPath.isNotEmpty ? state.idDocumentPath : null,
        selfieUrl: state.selfiePath.isNotEmpty ? state.selfiePath : null,
        address: state.address.isNotEmpty ? state.address : null,
        yearsInBusiness: state.yearsInBusiness,
        fleetSize: state.fleetSize,
        cargoSpecializations: state.cargoSpecializations,
        serviceRegions: state.serviceRegions,
        baseLat: state.baseLat,
        baseLng: state.baseLng,
        serviceRadiusKm: state.serviceRadiusKm,
      );
      emit(state.copyWith(status: AgentOnboardingStatus.success));
    } catch (e) {
      emit(state.copyWith(status: AgentOnboardingStatus.failure, errorMessage: e.toString()));
    }
  }
}
