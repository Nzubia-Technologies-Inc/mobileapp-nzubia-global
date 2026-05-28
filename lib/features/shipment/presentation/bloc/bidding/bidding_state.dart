import 'package:equatable/equatable.dart';
import 'package:customer_nzubia_global/features/shipment/domain/entities/quote_entity.dart';

abstract class BiddingState extends Equatable {
  const BiddingState();

  @override
  List<Object?> get props => [];
}

class BiddingInitial extends BiddingState {}

class BiddingActive extends BiddingState {
  final List<QuoteEntity> quotes;
  const BiddingActive({required this.quotes});

  @override
  List<Object> get props => [quotes];
}

class BiddingLocking extends BiddingState {}

class BiddingLockedSuccess extends BiddingState {
  final Map<String, dynamic> successData; // Contains shipment, agent, etc.

  const BiddingLockedSuccess(this.successData);

  @override
  List<Object> get props => [successData];
}

class BiddingError extends BiddingState {
  final String message;
  const BiddingError(this.message);

  @override
  List<Object> get props => [message];
}
