import 'package:equatable/equatable.dart';
import 'package:customer_nzubia_global/features/shipment/domain/entities/quote_entity.dart';

abstract class BiddingEvent extends Equatable {
  const BiddingEvent();

  @override
  List<Object> get props => [];
}

class StartWatchingQuotes extends BiddingEvent {
  final String shipmentId;
  const StartWatchingQuotes(this.shipmentId);

  @override
  List<Object> get props => [shipmentId];
}

class QuotesUpdated extends BiddingEvent {
  final List<QuoteEntity> quotes;
  const QuotesUpdated(this.quotes);

  @override
  List<Object> get props => [quotes];
}

class AcceptQuote extends BiddingEvent {
  final String quoteId;
  const AcceptQuote(this.quoteId);

  @override
  List<Object> get props => [quoteId];
}
