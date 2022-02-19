import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/features/auth/register/register_screen.dart';

/// Маршрут для навигации к экрану регистрации
class RegisterRoute extends MaterialPage<void> {
  static const routeName = '/register';

  const RegisterRoute()
      : super(
          child: const RegisterScreen(),
        );
}
