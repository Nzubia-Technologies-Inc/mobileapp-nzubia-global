import 'package:equatable/equatable.dart';
import 'package:customer_nzubia_global/features/shipment/domain/entities/quote_entity.dart';

enum QuoteListStatus { initial, loading, success, failure, quoteAccepted }

class QuoteListState extends Equatable {
  final QuoteListStatus status;
  final List<QuoteEntity> quotes;
  final String? errorMessage;
  final String? acceptedQuoteId;

  const QuoteListState({
    this.status = QuoteListStatus.initial,
    this.quotes = const [],
    this.errorMessage,
    this.acceptedQuoteId,
  });

  QuoteListState copyWith({
    QuoteListStatus? status,
    List<QuoteEntity>? quotes,
    String? errorMessage,
    String? acceptedQuoteId,
  }) {
    return QuoteListState(
      status: status ?? this.status,
      quotes: quotes ?? this.quotes,
      errorMessage: errorMessage ?? this.errorMessage,
      acceptedQuoteId: acceptedQuoteId ?? this.acceptedQuoteId,
    );
  }

  @override
  List<Object?> get props => [status, quotes, errorMessage, acceptedQuoteId];
}
