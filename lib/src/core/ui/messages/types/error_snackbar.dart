import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/core/ui/messages/types/snack_bar_message_type.dart';

/// Снекбар уведомляющий об ошибке
class ErrorSnackBar extends SnackBarMessageType {
  final String errorMessage;

  ErrorSnackBar(this.errorMessage);

  @override
  SnackBar create() {
    return SnackBar(content: Text(errorMessage), backgroundColor: Colors.red);
  }
}
