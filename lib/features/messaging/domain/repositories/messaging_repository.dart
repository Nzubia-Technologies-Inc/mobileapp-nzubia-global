import 'package:customer_nzubia_global/features/messaging/domain/entities/chat_entity.dart';
import 'package:customer_nzubia_global/features/messaging/domain/entities/message_entity.dart';

import 'package:customer_nzubia_global/features/auth/domain/entities/user_entity.dart';

abstract class MessagingRepository {
  Future<void> initialize();
  Future<List<ChatEntity>> getChats();
  Future<List<MessageEntity>> getMessages(String chatId);
  Future<void> sendMessage(String chatId, String content, {String? filePath});
  Stream<MessageEntity> get messageStream;
  Stream<List<MessageEntity>> getMessagesStream(String chatId);
  void dispose();
  Future<UserEntity?> getSupportAdmin();
}
