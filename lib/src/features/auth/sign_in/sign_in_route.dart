import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/di/app_dependencies.dart';
import 'package:where_to_go_today/src/features/auth/sign_in/sign_in_screen.dart';
import 'package:where_to_go_today/src/features/auth/sign_in/sign_in_screen_vm.dart';

/// Маршрут для навигации к экрану авторизации
class SignInRoute extends MaterialPage<void> {
  static const routeName = '/signIn';

  SignInRoute()
      : super(
          child: Provider<SignInScreenVm>(
            create: (ctx) => SignInScreenVm(
              ctx.read<AppDependencies>().authBloc,
              errorHandler: ctx.read<AppDependencies>().errorHandler,
            ),
            child: Builder(
              builder: (context) {
                return SignInScreen(
                  vm: context.read<SignInScreenVm>(),
                );
              },
            ),
          ),
        );
}
