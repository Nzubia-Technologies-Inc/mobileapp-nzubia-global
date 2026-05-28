import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:customer_nzubia_global/core/network/paginated_result.dart';
import 'package:customer_nzubia_global/features/payment/domain/repositories/payment_repository.dart';
import 'package:customer_nzubia_global/features/shipment/domain/repositories/shipment_repository.dart';
import 'package:customer_nzubia_global/features/shipment/domain/entities/shipment_entity.dart';
import 'dashboard_event.dart';
import 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final ShipmentRepository shipmentRepository;
  final PaymentRepository paymentRepository;

  DashboardBloc({
    required this.shipmentRepository,
    required this.paymentRepository,
  }) : super(const DashboardState()) {
    on<LoadDashboardStats>(_onLoadDashboardStats);
  }

  Future<void> _onLoadDashboardStats(LoadDashboardStats event, Emitter<DashboardState> emit) async {
    emit(state.copyWith(status: DashboardStatus.loading));
    try {
      // Fetch concurrently
      final responses = await Future.wait([
        shipmentRepository.getShipments(status: 'PENDING_AGENTS,BIDDING_ACTIVE,REQUESTED'),
        shipmentRepository.getShipments(status: 'BOOKED'),
        paymentRepository.getAgentEarnings(),
      ]);

      final pendingQuotes = responses[0] as PaginatedResult<ShipmentEntity>;
      final activeShipments = responses[1] as PaginatedResult<ShipmentEntity>;
      final earningsData = responses[2] as Map<String, dynamic>;

      final totalEarnings = earningsData['total'] ?? 0.0;

      emit(state.copyWith(
        status: DashboardStatus.loaded,
        pendingQuotesCount: pendingQuotes.meta.total,
        activeShipmentsCount: activeShipments.meta.total,
        totalEarnings: '\$${totalEarnings.toStringAsFixed(2)}',
      ));
    } catch (e) {
      emit(state.copyWith(status: DashboardStatus.error, errorMessage: e.toString()));
    }
  }
}
