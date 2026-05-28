import 'package:equatable/equatable.dart';

abstract class QuoteListEvent extends Equatable {
  const QuoteListEvent();

  @override
  @override
  List<Object?> get props => [];
}

class LoadQuotes extends QuoteListEvent {
  final String? shipmentId;
  const LoadQuotes([this.shipmentId]);
  @override
  List<Object?> get props => [shipmentId];
}

class AcceptQuote extends QuoteListEvent {
  final String quoteId;
  const AcceptQuote(this.quoteId);
  @override
  List<Object?> get props => [quoteId];
}
