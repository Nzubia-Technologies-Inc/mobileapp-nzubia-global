import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:customer_nzubia_global/features/p2p/domain/models/p2p_waiver.dart';
import 'package:customer_nzubia_global/features/p2p/domain/repositories/p2p_compliance_repository.dart';

part 'p2p_compliance_event.dart';
part 'p2p_compliance_state.dart';

class P2pComplianceBloc
    extends Bloc<P2pComplianceEvent, P2pComplianceState> {
  final P2pComplianceRepository _repository;

  P2pComplianceBloc({required P2pComplianceRepository repository})
      : _repository = repository,
        super(const P2pComplianceState()) {
    on<P2pComplianceLoadRequested>(_onLoadRequested);
    on<P2pComplianceWaiverPreviewRequested>(_onWaiverPreviewRequested);
    on<P2pComplianceWaiverAccepted>(_onWaiverAccepted);
    on<P2pComplianceShipmentStatusRequested>(_onShipmentStatusRequested);
  }

  Future<void> _onLoadRequested(
    P2pComplianceLoadRequested event,
    Emitter<P2pComplianceState> emit,
  ) async {
    emit(state.copyWith(status: P2pComplianceStatus.loading));
    try {
      final rules = await _repository.getRules();
      final restrictedItems = await _repository.getRestrictedItems();
      emit(state.copyWith(
        status: P2pComplianceStatus.loaded,
        rules: rules,
        restrictedItems: restrictedItems,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: P2pComplianceStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onWaiverPreviewRequested(
    P2pComplianceWaiverPreviewRequested event,
    Emitter<P2pComplianceState> emit,
  ) async {
    emit(state.copyWith(status: P2pComplianceStatus.loading));
    try {
      final preview = await _repository.previewWaiver(event.shipmentRequestId);
      emit(state.copyWith(
        status: P2pComplianceStatus.waiverPreview,
        waiverPreview: preview,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: P2pComplianceStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onWaiverAccepted(
    P2pComplianceWaiverAccepted event,
    Emitter<P2pComplianceState> emit,
  ) async {
    emit(state.copyWith(status: P2pComplianceStatus.loading));
    try {
      final waiver = await _repository.acceptWaiver(
        event.shipmentRequestId,
        acknowledgedFlags: event.acknowledgedFlags,
        proofMetadata: event.proofMetadata,
      );
      emit(state.copyWith(
        status: P2pComplianceStatus.waiverAccepted,
        signedWaiver: waiver,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: P2pComplianceStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onShipmentStatusRequested(
    P2pComplianceShipmentStatusRequested event,
    Emitter<P2pComplianceState> emit,
  ) async {
    try {
      final status =
          await _repository.getComplianceStatus(event.shipmentRequestId);
      emit(state.copyWith(
        status: P2pComplianceStatus.loaded,
        shipmentStatus: status,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: P2pComplianceStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
