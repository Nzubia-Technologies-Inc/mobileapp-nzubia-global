part of 'marketplace_bloc.dart';

abstract class MarketplaceEvent {
  const MarketplaceEvent();
}

class MarketplaceRouteFeedRequested extends MarketplaceEvent {
  final String? destinationCountry;
  final String? destinationCity;
  const MarketplaceRouteFeedRequested({
    this.destinationCountry,
    this.destinationCity,
  });
}

class MarketplaceRefreshed extends MarketplaceEvent {
  const MarketplaceRefreshed();
}
