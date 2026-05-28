import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:customer_nzubia_global/features/shipment/domain/repositories/quote_repository.dart';
import 'quote_list_event.dart';
import 'quote_list_state.dart';

class QuoteListBloc extends Bloc<QuoteListEvent, QuoteListState> {
  final QuoteRepository _quoteRepository;

  QuoteListBloc({required QuoteRepository quoteRepository})
      : _quoteRepository = quoteRepository,
        super(const QuoteListState()) {
    on<LoadQuotes>(_onLoadQuotes);
    on<AcceptQuote>(_onAcceptQuote);
  }

  Future<void> _onLoadQuotes(LoadQuotes event, Emitter<QuoteListState> emit) async {
    emit(state.copyWith(status: QuoteListStatus.loading));
    try {
      final quotes = event.shipmentId != null 
          ? await _quoteRepository.getQuotesForShipment(event.shipmentId!)
          : await _quoteRepository.getQuotes();
      emit(state.copyWith(status: QuoteListStatus.success, quotes: quotes));
    } catch (e) {
      emit(state.copyWith(
        status: QuoteListStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onAcceptQuote(AcceptQuote event, Emitter<QuoteListState> emit) async {
    // Optionally show loading state for acceptance specifically if needed
    // For now we can assume optimistic or blocking UI
    try {
      await _quoteRepository.acceptQuote(event.quoteId);
      emit(state.copyWith(status: QuoteListStatus.quoteAccepted, acceptedQuoteId: event.quoteId));
    } catch (e) {
      emit(state.copyWith(
        status: QuoteListStatus.failure,
        errorMessage: 'Failed to accept quote: ${e.toString()}',
      ));
    }
  }
}
