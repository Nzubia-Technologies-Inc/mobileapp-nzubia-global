import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:customer_nzubia_global/core/services/stripe_payment_service.dart';
import 'package:customer_nzubia_global/core/theme/app_theme.dart';

/// Shown after the seeker accepts a courier offer that has a payment amount.
/// Displays a payment summary and presents the Stripe payment sheet.
/// On success, navigates to the waiver screen.
class P2pPaymentScreen extends StatefulWidget {
  final String shipmentId;
  final String clientSecret;
  final double amountUsd;
  final String? courierName;

  const P2pPaymentScreen({
    super.key,
    required this.shipmentId,
    required this.clientSecret,
    required this.amountUsd,
    this.courierName,
  });

  @override
  State<P2pPaymentScreen> createState() => _P2pPaymentScreenState();
}

class _P2pPaymentScreenState extends State<P2pPaymentScreen> {
  bool _initializing = false;
  bool _paying = false;
  String? _error;

  Future<void> _pay() async {
    setState(() {
      _initializing = true;
      _error = null;
    });

    final stripe = GetIt.instance<StripePaymentService>();

    try {
      await stripe.initPaymentSheetWithClientSecret(widget.clientSecret);
      setState(() {
        _initializing = false;
        _paying = true;
      });
      await stripe.presentPaymentSheet();
      if (!mounted) return;
      // Payment complete — proceed to waiver
      context.pushReplacement('/p2p/shipment/${widget.shipmentId}/waiver');
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _initializing = false;
        _paying = false;
        final msg = e.toString();
        _error = msg.contains('cancelled') || msg.contains('cancel')
            ? 'Payment cancelled. Tap below to try again.'
            : msg.replaceFirst('Exception: ', '');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final busy = _initializing || _paying;

    // Nzubia platform fee is 2.5 % of offer amount
    const feeRate = 0.025;
    final fee = widget.amountUsd * feeRate;
    final total = widget.amountUsd;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.surface,
        elevation: 0,
        title: const Text('Confirm Payment'),
        leading: const BackButton(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── Header banner ────────────────────────────────────────────
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppTheme.primaryColor.withAlpha(18),
                borderRadius: BorderRadius.circular(14),
                border:
                    Border.all(color: AppTheme.primaryColor.withAlpha(50)),
              ),
              child: Row(
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor.withAlpha(30),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.lock_outline,
                        color: AppTheme.primaryColor, size: 22),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Secure payment held in escrow',
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppTheme.primaryColor,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          'Your payment is protected. Funds are only released to the courier after you confirm delivery.',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurface.withOpacity(0.65),
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // ── Summary card ──────────────────────────────────────────────
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                    color: theme.colorScheme.outline.withOpacity(0.5)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withAlpha(8),
                      blurRadius: 4,
                      offset: const Offset(0, 2)),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.receipt_long_outlined,
                          size: 16, color: AppTheme.primaryColor),
                      const SizedBox(width: 6),
                      Text(
                        'Order Summary',
                        style: theme.textTheme.bodyMedium
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  if (widget.courierName != null) ...[
                    _SummaryRow(
                      label: 'Courier',
                      value: widget.courierName!,
                      bold: false,
                    ),
                    const SizedBox(height: 10),
                  ],
                  _SummaryRow(
                    label: 'Delivery fee',
                    value: '\$${(widget.amountUsd - fee).toStringAsFixed(2)}',
                    bold: false,
                  ),
                  const SizedBox(height: 10),
                  _SummaryRow(
                    label: 'Platform fee (2.5%)',
                    value: '\$${fee.toStringAsFixed(2)}',
                    bold: false,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Divider(height: 1),
                  ),
                  _SummaryRow(
                    label: 'Total charged now',
                    value: '\$${total.toStringAsFixed(2)} USD',
                    bold: true,
                  ),
                  const SizedBox(height: 14),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.green[200]!),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.verified_outlined,
                            size: 16, color: Colors.green[700]),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Released to courier only after you confirm delivery.',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: Colors.green[800],
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            if (_error != null) ...[
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: theme.colorScheme.errorContainer.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.error_outline,
                        color: theme.colorScheme.error, size: 18),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        _error!,
                        style: TextStyle(
                            color: theme.colorScheme.error, fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ),
            ],

            const SizedBox(height: 32),

            // ── Pay button ────────────────────────────────────────────────
            SizedBox(
              width: double.infinity,
              height: 54,
              child: ElevatedButton.icon(
                onPressed: busy ? null : _pay,
                icon: busy
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(
                            color: Colors.white, strokeWidth: 2),
                      )
                    : const Icon(Icons.payment_outlined),
                label: Text(
                  _initializing
                      ? 'Preparing payment…'
                      : _paying
                          ? 'Processing…'
                          : 'Pay \$${total.toStringAsFixed(2)} & Continue',
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.primaryColor,
                  foregroundColor: Colors.white,
                  disabledBackgroundColor: AppTheme.primaryColor.withAlpha(80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),

            const SizedBox(height: 12),
            Center(
              child: Text(
                'Secured by Stripe · Your card details are never stored by Nzubia',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurface.withOpacity(0.4),
                  fontSize: 11,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  final String label;
  final String value;
  final bool bold;

  const _SummaryRow({
    required this.label,
    required this.value,
    required this.bold,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: bold
                ? theme.colorScheme.onSurface
                : theme.colorScheme.onSurface.withOpacity(0.55),
            fontWeight: bold ? FontWeight.w700 : FontWeight.normal,
          ),
        ),
        Text(
          value,
          style: theme.textTheme.bodySmall?.copyWith(
            fontWeight: bold ? FontWeight.w800 : FontWeight.w500,
            color: bold ? AppTheme.primaryColor : theme.colorScheme.onSurface,
            fontSize: bold ? 15 : null,
          ),
        ),
      ],
    );
  }
}
