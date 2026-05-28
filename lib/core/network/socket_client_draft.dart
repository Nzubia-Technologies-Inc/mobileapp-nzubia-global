import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:customer_nzubia_global/core/constants/api_constants.dart';

class SocketClient {
  late IO.Socket socket;
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  bool _isInitialized = false;

  void init() async {
    if (_isInitialized) return;

    final token = await _storage.read(key: 'access_token');
    

    const String socketUrl = 'https://api.nzubia.com/chat'; 

    socket = IO.io(socketUrl, IO.OptionBuilder()
        .setTransports(['websocket'])
        .setAuth({'token': token})
        .enableAutoConnect()
        .build());

    socket.onConnect((_) {
      print('Socket Client Connected: ${socket.id}');
    });

    socket.onDisconnect((_) => print('Socket Client Disconnected'));
    
    socket.onConnectError((err) => print('Socket Connection Error: $err'));

    _isInitialized = true;
  }

  void dispose() {
    socket.disconnect();
    socket.dispose();
  }
}
