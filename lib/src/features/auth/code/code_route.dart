import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/di/app_dependencies.dart';
import 'package:where_to_go_today/src/features/auth/code/code_screen.dart';
import 'package:where_to_go_today/src/features/auth/code/code_vm.dart';

/// Маршрут для навигации к экрану подтверждения кода авторизации через телефон
class CodeRoute extends MaterialPage<void> {
  static const routeName = '/code';

  CodeRoute(String phone)
      : super(
          child: Provider<CodeVm>(
            create: (ctx) => CodeVm(
              ctx.read<AppDependencies>().authBloc,
              errorHandler: ctx.read<AppDependencies>().errorHandler,
            ),
            child: Builder(
              builder: (context) {
                return CodeScreen(
                  vm: context.read<CodeVm>(),
                  phone: phone,
                );
              },
            ),
          ),
        );
}
