import 'package:flutter/material.dart';
import 'message_controller.dart';
import 'types/message_type.dart';

/// Эта сущность отвечает только за показ сообщений.
/// Для этого внутри создается ключ, который устанваливается в
/// поле [scaffoldMessengerKey] у [MaterialApp],
/// чтобы получить  [ScaffoldMessenger].
class DefaultMessageController implements MessageController {
  final scaffoldKey = GlobalKey<ScaffoldMessengerState>();

  @override
  void show(MessageType messageType) {
    scaffoldKey.currentState!.showSnackBar(messageType.create() as SnackBar);
  }
}
