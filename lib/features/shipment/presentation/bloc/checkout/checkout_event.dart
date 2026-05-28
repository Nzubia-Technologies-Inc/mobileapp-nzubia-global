import 'package:equatable/equatable.dart';

abstract class CheckoutEvent extends Equatable {
  const CheckoutEvent();

  @override
  List<Object> get props => [];
}

class CheckoutInitialized extends CheckoutEvent {
  final String quoteId;
  final double amount;
  final String currency;

  const CheckoutInitialized({
    required this.quoteId,
    required this.amount,
    required this.currency,
  });

  @override
  List<Object> get props => [quoteId, amount, currency];
}

class CheckoutPaymentRequested extends CheckoutEvent {}

class CheckoutPaymentVerified extends CheckoutEvent {}
