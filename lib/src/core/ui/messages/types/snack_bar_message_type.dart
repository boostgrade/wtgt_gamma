import 'package:flutter/material.dart';

import 'message_type.dart';

/// Сущность отвечающая за создание снекбаров.
/// Все уведомления-снекбары расширяют этот абстрактый тип.
/// При необходимости, разработчики могут создовать свои типы снекбаров,
/// при этом им необхомо позаботится о создании виджета соответвующего снекбара.
abstract class SnackBarMessageType implements MessageType {
  @override
  SnackBar create();
}
