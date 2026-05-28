import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bidding_event.dart';
import 'bidding_state.dart';
import 'package:customer_nzubia_global/features/shipment/domain/repositories/quote_repository.dart';
// import '../../../../domain/repositories/quote_repository.dart';

class BiddingBloc extends Bloc<BiddingEvent, BiddingState> {
  final QuoteRepository _repo;
  StreamSubscription? _quoteSubscription;

  BiddingBloc(this._repo) : super(BiddingInitial()) {
    on<StartWatchingQuotes>(_onStartWatching);
    on<QuotesUpdated>(_onQuotesUpdated);
    on<AcceptQuote>(_onAcceptQuote);
  }

  void _onStartWatching(StartWatchingQuotes event, Emitter<BiddingState> emit) async {
    emit(const BiddingActive(quotes: []));
    await _quoteSubscription?.cancel();
    _quoteSubscription = _repo.watchQuotes(event.shipmentId).listen((quotes) {
        add(QuotesUpdated(quotes));
    });
  }

  void _onQuotesUpdated(QuotesUpdated event, Emitter<BiddingState> emit) {
    emit(BiddingActive(quotes: event.quotes));
  }

  Future<void> _onAcceptQuote(AcceptQuote event, Emitter<BiddingState> emit) async {
      emit(BiddingLocking());
      try {
          await _repo.acceptQuote(event.quoteId);
          emit(const BiddingLockedSuccess({}));
      } catch (e) {
          emit(BiddingError(e.toString()));
      }
  }

  @override
  Future<void> close() {
    _quoteSubscription?.cancel();
    return super.close();
  }
}
