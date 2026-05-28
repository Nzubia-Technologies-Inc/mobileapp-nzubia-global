import 'package:customer_nzubia_global/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart';

class TrackingCodeWidget extends StatelessWidget {
  final String trackingNumber;

  const TrackingCodeWidget({
    super.key,
    required this.trackingNumber,
  });

  void _copyToClipboard(BuildContext context) {
    Clipboard.setData(ClipboardData(text: trackingNumber));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(AppLocalizations.of(context)!.copiedToClipboard)),
    );
  }

  void _shareTrackingLink(BuildContext context) {
    final trackingUrl = 'https://nzubia.com/track/$trackingNumber';
    Share.share(
      'Track your shipment: $trackingUrl',
      subject: 'Nzubia Shipment Tracking',
    );
  }

  void _showQRCode(BuildContext context) {
    final trackingUrl = 'https://nzubia.com/track/$trackingNumber';

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.trackingQrcodeTitle),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            QrImageView(
              data: trackingUrl,
              version: QrVersions.auto,
              size: 250.0,
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 16),
            Text(
              trackingNumber,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              trackingUrl,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.close),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.qr_code_2, size: 20),
                const SizedBox(width: 8),
                Text(
                  AppLocalizations.of(context)!.trackingCode,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      trackingNumber,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                          color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.copy, size: 20 , color: Color(0xFF000000)),
                    onPressed: () => _copyToClipboard(context),
                    tooltip: AppLocalizations.of(context)!.copy, // I'll check if I have 'copy'
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => _shareTrackingLink(context),
                    icon: const Icon(Icons.share, size: 18),
                    label: Text(AppLocalizations.of(context)!.shareLink),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () => _showQRCode(context),
                    icon: const Icon(Icons.qr_code, size: 18),
                    label: Text(AppLocalizations.of(context)!.qrCode),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
