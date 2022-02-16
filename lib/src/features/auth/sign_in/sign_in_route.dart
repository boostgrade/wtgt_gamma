import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/di/app_dependencies.dart';

import 'sign_in_screen.dart';
import 'sign_in_screen_vm.dart';

/// Маршрут для навигации к экрану авторизации
@immutable
class SignInRoute extends MaterialPage<void> {
  static const routeName = '/signIn';

  SignInRoute()
      : super(
          child: Provider<SignInScreenVm>(
            create: (ctx) => SignInScreenVm(
              ctx.read<AppDependencies>().authBloc,
              errorHandler: ctx.read<AppDependencies>().errorHandler,
              context: ctx,
            ),
            child: Builder(
              builder: (context) => SignInScreen(
                vm: context.read<SignInScreenVm>(),
              ),
            ),
          ),
        );
}
