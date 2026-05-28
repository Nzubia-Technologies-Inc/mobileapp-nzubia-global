import 'package:equatable/equatable.dart';
import 'package:customer_nzubia_global/features/shipment/domain/entities/shipment_entity.dart';

enum ShipmentListStatus { initial, loading, success, failure }

class ShipmentListState extends Equatable {
  final ShipmentListStatus status;
  final List<ShipmentEntity> shipments;
  final String? errorMessage;
  final bool hasReachedMax;
  final int page;
  final int totalCount;

  const ShipmentListState({
    this.status = ShipmentListStatus.initial,
    this.shipments = const [],
    this.errorMessage,
    this.hasReachedMax = false,
    this.page = 1,
    this.totalCount = 0,
  });

  ShipmentListState copyWith({
    ShipmentListStatus? status,
    List<ShipmentEntity>? shipments,
    String? errorMessage,
    bool? hasReachedMax,
    int? page,
    int? totalCount,
  }) {
    return ShipmentListState(
      status: status ?? this.status,
      shipments: shipments ?? this.shipments,
      errorMessage: errorMessage ?? this.errorMessage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      page: page ?? this.page,
      totalCount: totalCount ?? this.totalCount,
    );
  }

  @override
  List<Object?> get props => [status, shipments, errorMessage, hasReachedMax, page, totalCount];
}
