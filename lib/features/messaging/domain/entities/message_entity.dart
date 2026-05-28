import 'package:equatable/equatable.dart';

class MessageEntity extends Equatable {
  final String id;
  final String senderId;
  final String receiverId;
  final String content;
  final DateTime timestamp;
  final bool isRead;
  final bool isMe;
  final String? attachmentUrl;
  final String? attachmentType;
  final String? attachmentName;

  const MessageEntity({
    required this.id,
    required this.senderId,
    this.receiverId = '',
    required this.content,
    required this.timestamp,
    this.isRead = false,
    this.isMe = false,
    this.attachmentUrl,
    this.attachmentType,
    this.attachmentName,
  });

  MessageEntity copyWith({
    String? id,
    String? senderId,
    String? receiverId,
    String? content,
    DateTime? timestamp,
    bool? isRead,
    bool? isMe,
    String? attachmentUrl,
    String? attachmentType,
    String? attachmentName,
  }) {
    return MessageEntity(
      id: id ?? this.id,
      senderId: senderId ?? this.senderId,
      receiverId: receiverId ?? this.receiverId,
      content: content ?? this.content,
      timestamp: timestamp ?? this.timestamp,
      isRead: isRead ?? this.isRead,
      isMe: isMe ?? this.isMe,
      attachmentUrl: attachmentUrl ?? this.attachmentUrl,
      attachmentType: attachmentType ?? this.attachmentType,
      attachmentName: attachmentName ?? this.attachmentName,
    );
  }

  @override
  List<Object?> get props => [id, senderId, receiverId, content, timestamp, isRead, isMe, attachmentUrl, attachmentType, attachmentName];
}
