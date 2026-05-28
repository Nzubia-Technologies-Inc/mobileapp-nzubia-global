import 'package:customer_nzubia_global/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:customer_nzubia_global/core/utils/service_locator.dart';
import 'package:customer_nzubia_global/features/payout/data/repositories/payout_repository.dart';
import 'package:customer_nzubia_global/features/payout/presentation/bloc/payout_bloc.dart';
import 'package:go_router/go_router.dart';

class BankAccountSetupScreen extends StatefulWidget {
  const BankAccountSetupScreen({super.key});

  @override
  State<BankAccountSetupScreen> createState() => _BankAccountSetupScreenState();
}

class _BankAccountSetupScreenState extends State<BankAccountSetupScreen> {
  late WebViewController _webViewController;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _initializeWebView();
  }

  void _initializeWebView() {
    _webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            setState(() => _isLoading = true);
          },
          onPageFinished: (String url) {
            setState(() => _isLoading = false);
            
            // Check if user completed onboarding (return URL)
            if (url.contains('success') || url.contains('complete')) {
              _handleOnboardingComplete();
            }
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('nzubia://')) {
              if (request.url.contains('complete') || request.url.contains('success')) {
                _handleOnboardingComplete();
              }
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      );
  }

  void _handleOnboardingComplete() {
    // Check payout status to confirm bank account was added
    context.read<PayoutBloc>().add(CheckPayoutStatus());
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(AppLocalizations.of(context)!.bankAccountConnectedSuccessfully)),
    );
    
    // Navigate back to finance screen
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) context.pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.connectBankAccountTitle),
        backgroundColor: theme.appBarTheme.backgroundColor,
      ),
      body: BlocProvider(
        create: (context) => PayoutBloc(repository: sl<PayoutRepository>())
          ..add(FetchOnboardingLink('nzubia://bank-setup-complete')),
        child: BlocConsumer<PayoutBloc, PayoutState>(
          listener: (context, state) {
            if (state is PayoutError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message)),
              );
            } else if (state is OnboardingLinkReady) {
              _webViewController.loadRequest(Uri.parse(state.url));
            }
          },
          builder: (context, state) {
            if (state is PayoutLoading || state is PayoutInitial) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is PayoutError) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline, size: 64, color: Colors.red),
                    const SizedBox(height: 16),
                    Text(
                      'Failed to load bank setup',
                      style: theme.textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      state.message,
                      style: theme.textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () => context.pop(),
                      child: Text(AppLocalizations.of(context)!.goBack),
                    ),
                  ],
                ),
              );
            }

            return Stack(
              children: [
                WebViewWidget(controller: _webViewController),
                if (_isLoading)
                  const Center(child: CircularProgressIndicator()),
              ],
            );
          },
        ),
      ),
    );
  }
}
