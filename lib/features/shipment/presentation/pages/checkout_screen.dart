import 'package:customer_nzubia_global/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:customer_nzubia_global/core/theme/app_theme.dart';
import 'package:customer_nzubia_global/core/utils/service_locator.dart';
import 'package:customer_nzubia_global/features/shipment/presentation/bloc/checkout/checkout_bloc.dart';
import 'package:customer_nzubia_global/features/shipment/presentation/bloc/checkout/checkout_event.dart';
import 'package:customer_nzubia_global/features/shipment/presentation/bloc/checkout/checkout_state.dart';
import 'package:customer_nzubia_global/core/bloc/deep_link/deep_link_bloc.dart';

class CheckoutScreen extends StatelessWidget {
  final String quoteId;
  final double amount;
  final String currency;

  const CheckoutScreen({
    super.key,
    required this.quoteId,
    required this.amount,
    required this.currency,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CheckoutBloc(paymentService: sl())
            ..add(CheckoutInitialized(quoteId: quoteId, amount: amount, currency: currency)),
        ),
        BlocProvider(
          create: (context) => DeepLinkBloc()..add(DeepLinkStarted()),
        ),
      ],
      child: CheckoutView(amount: amount, currency: currency),
    );
  }
}

class CheckoutView extends StatelessWidget {
  final double amount;
  final String currency;

  const CheckoutView({super.key, required this.amount, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.checkout)),
      body: MultiBlocListener(
        listeners: [
          BlocListener<DeepLinkBloc, DeepLinkState>(
            listener: (context, state) {
              if (state is DeepLinkReceived) {
                if (state.uri.toString().contains('payment-success')) {
                   context.read<CheckoutBloc>().add(CheckoutPaymentVerified());
                }
              }
            },
          ),
          BlocListener<CheckoutBloc, CheckoutState>(
            listener: (context, state) {
              if (state.status == CheckoutStatus.success) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(AppLocalizations.of(context)!.paymentSuccessfulShipmentBooked)),
                );
                context.go('/payment-success');
              }
              if (state.status == CheckoutStatus.failure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.errorMessage ?? 'Payment Failed')),
                );
              }
            },
          ),
        ],
        child: BlocBuilder<CheckoutBloc, CheckoutState>(
          builder: (context, state) {
            if (state.status == CheckoutStatus.loading) {
               return const Center(child: CircularProgressIndicator());
            }

            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Icon(Icons.payment, size: 64, color: AppTheme.primaryColor),
                  const SizedBox(height: 24),
                  Text(
                    'Order Summary',
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  const Text(
                     'Total to Pay',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 8),
                   Text(
                     '$currency ${amount.toStringAsFixed(2)}',
                     textAlign: TextAlign.center,
                     style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
                   ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CheckoutBloc>().add(CheckoutPaymentRequested());
                    },
                    child: Text(AppLocalizations.of(context)!.payNow),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
