import 'package:equatable/equatable.dart';
import 'package:customer_nzubia_global/features/auth/domain/entities/user_entity.dart';
import 'package:customer_nzubia_global/features/messaging/domain/entities/chat_entity.dart';
import 'package:customer_nzubia_global/features/messaging/domain/entities/message_entity.dart';

enum ChatStatus { initial, loading, success, failure }

class ChatState extends Equatable {
  final ChatStatus chatListStatus;
  final ChatStatus messageStatus;
  final ChatStatus supportChatStatus;
  final List<ChatEntity> chats;
  final List<MessageEntity> messages;
  final UserEntity? supportAdmin;
  final String? errorMessage;

  const ChatState({
    this.chatListStatus = ChatStatus.initial,
    this.messageStatus = ChatStatus.initial,
    this.supportChatStatus = ChatStatus.initial,
    this.chats = const [],
    this.messages = const [],
    this.supportAdmin,
    this.errorMessage,
  });

  ChatState copyWith({
    ChatStatus? chatListStatus,
    ChatStatus? messageStatus,
    ChatStatus? supportChatStatus,
    List<ChatEntity>? chats,
    List<MessageEntity>? messages,
    UserEntity? supportAdmin,
    String? errorMessage,
  }) {
    return ChatState(
      chatListStatus: chatListStatus ?? this.chatListStatus,
      messageStatus: messageStatus ?? this.messageStatus,
      supportChatStatus: supportChatStatus ?? this.supportChatStatus,
      chats: chats ?? this.chats,
      messages: messages ?? this.messages,
      supportAdmin: supportAdmin ?? this.supportAdmin,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [chatListStatus, messageStatus, supportChatStatus, chats, messages, supportAdmin, errorMessage];
}
