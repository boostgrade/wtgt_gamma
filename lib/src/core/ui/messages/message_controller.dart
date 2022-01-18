import 'package:where_to_go_today/src/core/ui/messages/types/message_type.dart';

/// Абстрактый класс для всех контроллеров сообщений.
/// Реализации должны лишь реализовать метод,
/// который в зависимости от переданного типа показывает сообщение.
abstract class MessageController {
  void show(MessageType messageType);
}
