import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:customer_nzubia_global/core/theme/app_theme.dart';
import 'package:customer_nzubia_global/features/p2p/data/services/p2p_payment_tracker.dart';

/// Shown after the seeker accepts a courier offer that has a payment amount.
/// Uses a mock payment flow (no real Stripe) — real integration comes later.
/// Back navigation is blocked: payment is mandatory to proceed to the waiver.
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
  bool _processing = false;
  bool _done = false;

  Future<void> _mockPay() async {
    setState(() => _processing = true);

    // Simulate payment processing delay.
    await Future<void>.delayed(const Duration(milliseconds: 1800));

    if (!mounted) return;

    P2pPaymentTracker.markPaymentComplete(widget.shipmentId);
    setState(() {
      _processing = false;
      _done = true;
    });

    await Future<void>.delayed(const Duration(milliseconds: 600));
    if (!mounted) return;
    context.pushReplacement('/p2p/shipment/${widget.shipmentId}/waiver');
  }

  Future<bool> _onWillPop() async {
    final leave = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Payment required'),
        content: const Text(
          'You must complete payment before continuing. '
          'If you go back now, your booking will remain on hold '
          'and you will need to return to complete payment.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Stay'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: TextButton.styleFrom(
                foregroundColor: AppTheme.errorColor),
            child: const Text('Go back'),
          ),
        ],
      ),
    );
    return leave ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    const feeRate = 0.025;
    final fee = widget.amountUsd * feeRate;
    final total = widget.amountUsd;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) async {
        if (!didPop) {
          final allow = await _onWillPop();
          if (allow && context.mounted) context.pop();
        }
      },
      child: Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: theme.colorScheme.surface,
          elevation: 0,
          title: const Text('Confirm Payment'),
          // Back button wired through PopScope so the dialog fires.
          leading: BackButton(onPressed: () async {
            final allow = await _onWillPop();
            if (allow && context.mounted) context.pop();
          }),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Mock / demo banner ────────────────────────────────────────
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                    horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.amber[50],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.amber[300]!),
                ),
                child: Row(
                  children: [
                    Icon(Icons.info_outline,
                        size: 16, color: Colors.amber[800]),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Demo mode — no real charge. '
                        'Payment integration coming soon.',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.amber[900],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ── Escrow header ─────────────────────────────────────────────
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
                            'Funds are only released to the courier after you confirm delivery.',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurface
                                  .withOpacity(0.65),
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

              // ── Order summary ─────────────────────────────────────────────
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
                      value:
                          '\$${(widget.amountUsd - fee).toStringAsFixed(2)}',
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

              const SizedBox(height: 24),

              // ── Mock card details ─────────────────────────────────────────
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                      color: theme.colorScheme.outline.withOpacity(0.5)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.credit_card_outlined,
                            size: 16, color: AppTheme.primaryColor),
                        const SizedBox(width: 6),
                        Text(
                          'Card Details',
                          style: theme.textTheme.bodyMedium
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 3),
                          decoration: BoxDecoration(
                            color: Colors.amber[100],
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            'DEMO',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: Colors.amber[900]),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    _MockField(
                        label: 'Card number',
                        value: '4242  4242  4242  4242'),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Expanded(
                            child: _MockField(
                                label: 'Expiry', value: '12 / 28')),
                        SizedBox(width: 12),
                        Expanded(
                            child: _MockField(label: 'CVC', value: '•••')),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              // ── Pay button ────────────────────────────────────────────────
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton.icon(
                  onPressed: (_processing || _done) ? null : _mockPay,
                  icon: _processing
                      ? const SizedBox(
                          width: 18,
                          height: 18,
                          child: CircularProgressIndicator(
                              color: Colors.white, strokeWidth: 2),
                        )
                      : _done
                          ? const Icon(Icons.check_circle_outline)
                          : const Icon(Icons.payment_outlined),
                  label: Text(
                    _processing
                        ? 'Processing…'
                        : _done
                            ? 'Payment confirmed!'
                            : 'Pay \$${total.toStringAsFixed(2)} & Continue',
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        _done ? Colors.green[600] : AppTheme.primaryColor,
                    foregroundColor: Colors.white,
                    disabledBackgroundColor: _done
                        ? Colors.green[600]
                        : AppTheme.primaryColor.withAlpha(80),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ),

              const SizedBox(height: 12),
              Center(
                child: Text(
                  'Demo mode · No real charge will be made',
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
            color:
                bold ? AppTheme.primaryColor : theme.colorScheme.onSurface,
            fontSize: bold ? 15 : null,
          ),
        ),
      ],
    );
  }
}

class _MockField extends StatelessWidget {
  final String label;
  final String value;

  const _MockField({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurface.withOpacity(0.5),
            fontSize: 11,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          width: double.infinity,
          padding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
          decoration: BoxDecoration(
            color: theme.colorScheme.onSurface.withOpacity(0.05),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: theme.colorScheme.outline.withOpacity(0.4)),
          ),
          child: Text(
            value,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
              color: theme.colorScheme.onSurface.withOpacity(0.7),
              letterSpacing: 1.2,
            ),
          ),
        ),
      ],
    );
  }
}
