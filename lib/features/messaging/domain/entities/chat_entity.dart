import 'package:equatable/equatable.dart';
import 'package:customer_nzubia_global/features/messaging/domain/entities/message_entity.dart';


class ChatEntity extends Equatable {
  final String id;
  final String agentName;
  final String agentId;
  final String lastMessage;
  final DateTime lastMessageTime;
  final int unreadCount;
  final String agentAvatarUrl; // Placeholder for now

  const ChatEntity({
    required this.id,
    required this.agentName,
    required this.agentId,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.unreadCount,
    this.agentAvatarUrl = '',
  });

  @override
  List<Object?> get props => [id, agentName, agentId, lastMessage, lastMessageTime, unreadCount, agentAvatarUrl];
}
