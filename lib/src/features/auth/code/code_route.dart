import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/features/auth/code/code_screen.dart';

/// Маршрут для навигации к экрану подтверждения кода авторизации через телефон
class CodeRoute extends MaterialPage<void> {
  static const routeName = '/code';

  const CodeRoute()
      : super(
          child: const CodeScreen(),
        );
}
