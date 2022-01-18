import 'package:where_to_go_today/src/core/ui/messages/types/snack_bar_message_type.dart';
import 'package:flutter/material.dart';

/// Снекбар для простых сообщений
class CommonSnackBar extends SnackBarMessageType {
  final String message;

  CommonSnackBar(this.message);

  @override
  SnackBar create() {
    return SnackBar(content: Text(message));
  }
}
