import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:customer_nzubia_global/features/payout/data/repositories/payout_repository.dart';
import 'package:equatable/equatable.dart';

// Events
abstract class PayoutEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CreateRecipient extends PayoutEvent {}

class FetchOnboardingLink extends PayoutEvent {
  final String returnUrl;
  FetchOnboardingLink(this.returnUrl);
  
  @override
  List<Object?> get props => [returnUrl];
}

class CheckPayoutStatus extends PayoutEvent {}

class FetchPayoutHistory extends PayoutEvent {}

// States
abstract class PayoutState extends Equatable {
  @override
  List<Object?> get props => [];
}

class PayoutInitial extends PayoutState {}

class PayoutLoading extends PayoutState {}

class PayoutError extends PayoutState {
  final String message;
  PayoutError(this.message);
  
  @override
  List<Object?> get props => [message];
}

class RecipientCreated extends PayoutState {
  final String recipientId;
  RecipientCreated(this.recipientId);
  
  @override
  List<Object?> get props => [recipientId];
}

class OnboardingLinkReady extends PayoutState {
  final String url;
  OnboardingLinkReady(this.url);
  
  @override
  List<Object?> get props => [url];
}

class PayoutStatusLoaded extends PayoutState {
  final bool canReceivePayouts;
  final String? recipientId;
  final bool isLegacyConnect;
  
  PayoutStatusLoaded({
    required this.canReceivePayouts,
    this.recipientId,
    this.isLegacyConnect = false,
  });
  
  @override
  List<Object?> get props => [canReceivePayouts, recipientId, isLegacyConnect];
}

class PayoutHistoryLoaded extends PayoutState {
  final List<dynamic> payouts;
  PayoutHistoryLoaded(this.payouts);
  
  @override
  List<Object?> get props => [payouts];
}

// Bloc
class PayoutBloc extends Bloc<PayoutEvent, PayoutState> {
  final PayoutRepository repository;

  PayoutBloc({required this.repository}) : super(PayoutInitial()) {
    on<CreateRecipient>(_onCreateRecipient);
    on<FetchOnboardingLink>(_onFetchOnboardingLink);
    on<CheckPayoutStatus>(_onCheckPayoutStatus);
    on<FetchPayoutHistory>(_onFetchPayoutHistory);
  }

  Future<void> _onCreateRecipient(CreateRecipient event, Emitter<PayoutState> emit) async {
    emit(PayoutLoading());
    try {
      final result = await repository.createRecipient();
      emit(RecipientCreated(result['recipientId']));
    } catch (e) {
      emit(PayoutError(e.toString()));
    }
  }

  Future<void> _onFetchOnboardingLink(FetchOnboardingLink event, Emitter<PayoutState> emit) async {
    emit(PayoutLoading());
    try {
      final url = await repository.getOnboardingLink(event.returnUrl);
      emit(OnboardingLinkReady(url));
    } catch (e) {
      emit(PayoutError(e.toString()));
    }
  }

  Future<void> _onCheckPayoutStatus(CheckPayoutStatus event, Emitter<PayoutState> emit) async {
    emit(PayoutLoading());
    try {
      final status = await repository.getPayoutStatus();
      emit(PayoutStatusLoaded(
        canReceivePayouts: status['canReceivePayouts'] ?? false,
        recipientId: status['recipientId'],
        isLegacyConnect: status['isLegacyConnect'] ?? false,
      ));
    } catch (e) {
      emit(PayoutError(e.toString()));
    }
  }

  Future<void> _onFetchPayoutHistory(FetchPayoutHistory event, Emitter<PayoutState> emit) async {
    emit(PayoutLoading());
    try {
      final payouts = await repository.getPayoutHistory();
      emit(PayoutHistoryLoaded(payouts));
    } catch (e) {
      emit(PayoutError(e.toString()));
    }
  }
}
