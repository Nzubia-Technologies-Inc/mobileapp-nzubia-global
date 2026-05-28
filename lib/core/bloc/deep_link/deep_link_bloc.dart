import 'dart:async';
import 'package:app_links/app_links.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

// Events
abstract class DeepLinkEvent extends Equatable {
  const DeepLinkEvent();
  @override
  List<Object?> get props => [];
}

class DeepLinkStarted extends DeepLinkEvent {}

// State
abstract class DeepLinkState extends Equatable {
  const DeepLinkState();
  @override
  List<Object?> get props => [];
}

class DeepLinkInitial extends DeepLinkState {}

class DeepLinkReceived extends DeepLinkState {
  final Uri uri;
  const DeepLinkReceived(this.uri);
  @override
  List<Object?> get props => [uri];
}

class DeepLinkBloc extends Bloc<DeepLinkEvent, DeepLinkState> {
  final _appLinks = AppLinks();
  StreamSubscription<Uri>? _linkSubscription;

  DeepLinkBloc() : super(DeepLinkInitial()) {
    on<DeepLinkStarted>(_onStarted);
  }

  Future<void> _onStarted(DeepLinkStarted event, Emitter<DeepLinkState> emit) async {
    // Check initial link
    try {
      final initialUri = await _appLinks.getInitialLink();
      if (initialUri != null) {
        emit(DeepLinkReceived(initialUri));
      }
    } catch (e) {
      // Ignore errors
    }

    // Listen to stream
    await emit.forEach<Uri>(
      _appLinks.uriLinkStream,
      onData: (uri) => DeepLinkReceived(uri),
      onError: (_, __) => DeepLinkInitial(),
    );
  }

  @override
  Future<void> close() {
    _linkSubscription?.cancel();
    return super.close();
  }
}
