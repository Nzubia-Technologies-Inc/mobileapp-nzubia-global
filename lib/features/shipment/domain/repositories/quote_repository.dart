import 'package:customer_nzubia_global/features/shipment/domain/entities/quote_entity.dart';

abstract class QuoteRepository {
  Future<List<QuoteEntity>> getQuotesForShipment(String shipmentId);
  Future<List<QuoteEntity>> getQuotes();
  Future<void> acceptQuote(String quoteId);
  Stream<List<QuoteEntity>> watchQuotes(String shipmentId);
  Future<void> createQuote({
    required String shipmentId,
    required double amount,
    required String notes,
    required String method,
    required DateTime deliveryDate,
    String? payoutMethod,
    String? insuranceType,
    String? insuranceName,
    double? insuranceFee,
    required bool legalGoodsTermsAccepted,
  });
    Future<void> updateQuote({
    required String quoteId,
    required double amount,
    required String notes,
    required String method,
    required DateTime deliveryDate,
    String? payoutMethod,
    String? insuranceType,
    String? insuranceName,
    double? insuranceFee,
    });
}
