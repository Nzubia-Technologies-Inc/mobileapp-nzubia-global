import 'dart:async';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../constants/api_constants.dart';

class SocketClient {
  late IO.Socket _socket;
  final FlutterSecureStorage _storage;
  
  // Stream controller to broadcast socket connection status if needed
  final _connectionStatusController = StreamController<bool>.broadcast();
  Stream<bool> get connectionStatus => _connectionStatusController.stream;

  final _shipmentUpdateController = StreamController<Map<String, dynamic>>.broadcast();
  Stream<Map<String, dynamic>> get shipmentUpdates => _shipmentUpdateController.stream;

  final _chatMessageController = StreamController<Map<String, dynamic>>.broadcast();
  Stream<Map<String, dynamic>> get chatMessages => _chatMessageController.stream;

  SocketClient(this._storage);

  IO.Socket get socket => _socket;

  Future<void> init() async {
    final token = await _storage.read(key: 'accessToken');

    final socketUrl = '${ApiConstants.socketUrl}/chat';

    _socket = IO.io(socketUrl, IO.OptionBuilder()
        .setTransports(['websocket', 'polling'])
        .setAuth({'token': token})
        .setExtraHeaders({
          'Origin': 'http://localhost', // Bypass strict CORS on iOS
          'Connection': 'Upgrade',
          'Upgrade': 'websocket'
        })
        .enableAutoConnect()
        .enableForceNewConnection()
        .build());

    _socket.onConnect((_) {
      print('Socket Client Connected: ${_socket.id}');
      _connectionStatusController.add(true);
    });

    _socket.on('shipment_updated', (data) {
      _shipmentUpdateController.add(Map<String, dynamic>.from(data));
    });

    _socket.on('shipment_status_update', (data) {
      _shipmentUpdateController.add(Map<String, dynamic>.from(data));
    });

    _socket.on('new_message', (data) {
      _chatMessageController.add(Map<String, dynamic>.from(data));
    });

    _socket.onDisconnect((_) {
      print('Socket Client Disconnected');
      _connectionStatusController.add(false);
    });
    
    _socket.onConnectError((err) {
      print('Socket Connection Error: $err');
      _connectionStatusController.add(false);
    });
    
    _socket.onError((err) {
        print('Socket Error: $err');
    });
  }

  void disconnect() {
    _socket.disconnect();
    _connectionStatusController.close();
    _shipmentUpdateController.close();
    _chatMessageController.close();
  }

  void joinThread(String threadId) {
    if (_socket.connected) {
      _socket.emit('join_thread', {'thread_id': threadId});
    }
  }

  void sendChatMessage(String threadId, Map<String, dynamic> payload) {
    if (_socket.connected) {
      _socket.emit('send_message', {'thread_id': threadId, ...payload});
    }
  }

  void markThreadRead(String threadId) {
    if (_socket.connected) {
      _socket.emit('read_thread', {'thread_id': threadId});
    }
  }
  
  void dispose() {
    disconnect();
  }
}
