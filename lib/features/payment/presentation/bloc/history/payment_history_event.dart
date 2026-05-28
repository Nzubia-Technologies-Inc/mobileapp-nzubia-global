import 'package:equatable/equatable.dart';

abstract class PaymentHistoryEvent extends Equatable {
  const PaymentHistoryEvent();

  @override
  List<Object> get props => [];
}

class LoadPaymentHistory extends PaymentHistoryEvent {}
