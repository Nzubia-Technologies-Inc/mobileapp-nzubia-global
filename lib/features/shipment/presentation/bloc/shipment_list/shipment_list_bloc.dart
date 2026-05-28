import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:customer_nzubia_global/features/shipment/domain/repositories/shipment_repository.dart';
import 'package:customer_nzubia_global/core/network/socket_client.dart';
import 'shipment_list_event.dart';
import 'shipment_list_state.dart';

class ShipmentListBloc extends Bloc<ShipmentListEvent, ShipmentListState> {
  final ShipmentRepository _shipmentRepository;
  final SocketClient _socketClient;
  StreamSubscription? _socketSubscription;

  ShipmentListBloc({
    required ShipmentRepository shipmentRepository,
    required SocketClient socketClient,
  })  : _shipmentRepository = shipmentRepository,
        _socketClient = socketClient,
        super(const ShipmentListState()) {
    on<LoadShipments>(_onLoadShipments);
    _initSocketListener();
  }

  void _initSocketListener() {
    _socketSubscription = _socketClient.shipmentUpdates.listen((_) {
      // Refresh list on any relevant shipment update
      add(const LoadShipments());
    });
  }

  @override
  Future<void> close() {
    _socketSubscription?.cancel();
    return super.close();
  }

  Future<void> _onLoadShipments(
    LoadShipments event,
    Emitter<ShipmentListState> emit,
  ) async {
    if (event.isLoadMore && state.hasReachedMax) return;

    if (!event.isLoadMore) {
      emit(state.copyWith(status: ShipmentListStatus.loading, page: 1, shipments: []));
    }

    try {
      final pageToLoad = event.isLoadMore ? state.page + 1 : 1;

      final result = await _shipmentRepository.getShipments(
        status: event.statusFilter,
        searchQuery: event.searchQuery,
        page: pageToLoad,
        limit: 10,
      );

      final newShipments = result.data; // Already Entity list
      final meta = result.meta;
      final hasReachedMax = meta.page >= meta.lastPage;

      emit(state.copyWith(
        status: ShipmentListStatus.success,
        shipments: event.isLoadMore
            ? [...state.shipments, ...newShipments]
            : newShipments,
        hasReachedMax: hasReachedMax,
        page: meta.page,
        totalCount: meta.total,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: ShipmentListStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
