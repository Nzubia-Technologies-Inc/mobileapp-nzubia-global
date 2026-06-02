import '../../domain/entities/message_entity.dart';
import '../../domain/entities/chat_entity.dart';

abstract class MessagingRemoteDatasource {
  Future<void> sendMessage(String chatId, String content, {String? filePath});
  Future<List<MessageEntity>> getMessages(String chatId);
  Future<List<ChatEntity>> getChats();
  Stream<MessageEntity> get messageStream;
  Future<void> initialize();
  Future<void> joinRoom(String roomId);
  void dispose();
  Future<dynamic> getSupportAdmin();

}
