import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:customer_nzubia_global/features/notifications/domain/entities/notification_entity.dart';

// Events
abstract class NotificationsEvent extends Equatable {
  const NotificationsEvent();
  @override
  List<Object> get props => [];
}

class LoadNotifications extends NotificationsEvent {}

class MarkNotificationAsRead extends NotificationsEvent {
  final String id;
  const MarkNotificationAsRead(this.id);
  @override
  List<Object> get props => [id];
}

// State
enum NotificationsStatus { initial, loading, success, failure }

class NotificationsState extends Equatable {
  final NotificationsStatus status;
  final List<NotificationEntity> notifications;
  final String? errorMessage;

  const NotificationsState({
    this.status = NotificationsStatus.initial,
    this.notifications = const [],
    this.errorMessage,
  });

  NotificationsState copyWith({
    NotificationsStatus? status,
    List<NotificationEntity>? notifications,
    String? errorMessage,
  }) {
    return NotificationsState(
      status: status ?? this.status,
      notifications: notifications ?? this.notifications,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, notifications, errorMessage];
}

// Bloc
class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  // In a real app, inject GetAllNotifications use case
  NotificationsBloc() : super(const NotificationsState()) {
    on<LoadNotifications>(_onLoadNotifications);
    on<MarkNotificationAsRead>(_onMarkNotificationAsRead);
  }

  Future<void> _onLoadNotifications(LoadNotifications event, Emitter<NotificationsState> emit) async {
    emit(state.copyWith(status: NotificationsStatus.loading));
    try {
      // Mock API Delay
      await Future.delayed(const Duration(seconds: 1));

      // Mock Data (simulating what backend NotificationsService returns)
      final mockNotifications = [
        NotificationEntity(
          id: '1',
          title: 'New Shipment Request',
          message: 'Shipment #S-12345 matches your profile.',
          type: 'SHIPMENT_REQUEST',
          relatedEntityId: 'uuid-shipment-123',
          isRead: false,
          createdAt: DateTime.now().subtract(const Duration(minutes: 5)),
        ),
        NotificationEntity(
          id: '2',
          title: 'Welcome',
          message: 'Welcome to the Nzubia Agent Portal.',
          type: 'SYSTEM',
          relatedEntityId: '',
          isRead: true,
          createdAt: DateTime.now().subtract(const Duration(days: 1)),
        ),
      ];

      emit(state.copyWith(status: NotificationsStatus.success, notifications: mockNotifications));
    } catch (e) {
      emit(state.copyWith(status: NotificationsStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<void> _onMarkNotificationAsRead(MarkNotificationAsRead event, Emitter<NotificationsState> emit) async {
      // Optomistic UI Update
      final updatedList = state.notifications.map((n) {
          return n.id == event.id ?
             NotificationEntity(
                 id: n.id, title: n.title, message: n.message, type: n.type,
                 relatedEntityId: n.relatedEntityId, isRead: true, createdAt: n.createdAt
             ) : n;
      }).toList();
      emit(state.copyWith(notifications: updatedList));
      // Fire and forget API call would go here
  }
}
