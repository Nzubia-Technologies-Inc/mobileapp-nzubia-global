part of 'marketplace_bloc.dart';

enum MarketplaceStatus { initial, loading, success, failure }

class MarketplaceState {
  final MarketplaceStatus status;
  final List<P2pRoute> routes;
  final List<P2pRouteFeedItem> feed;
  final String? errorMessage;
  /// null = not yet checked, true = has a courier profile, false = no profile
  final bool? isCourier;

  const MarketplaceState({
    this.status = MarketplaceStatus.initial,
    this.routes = const [],
    this.feed = const [],
    this.errorMessage,
    this.isCourier,
  });

  MarketplaceState copyWith({
    MarketplaceStatus? status,
    List<P2pRoute>? routes,
    List<P2pRouteFeedItem>? feed,
    String? errorMessage,
    bool? isCourier,
  }) {
    return MarketplaceState(
      status: status ?? this.status,
      routes: routes ?? this.routes,
      feed: feed ?? this.feed,
      errorMessage: errorMessage ?? this.errorMessage,
      isCourier: isCourier ?? this.isCourier,
    );
  }
}
