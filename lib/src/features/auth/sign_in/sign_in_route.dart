import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/di/app_dependencies.dart';

import 'sign_in_screen.dart';
import 'sign_in_screen_vm.dart';

/// Роут экрана [SignIn]
@immutable
class SignInRoute extends MaterialPage<void> {
  static const routeName = '/signIn';

  SignInRoute()
      : super(
          child: Provider<SignInScreenVm>(
            create: (context) => SignInScreenVm(
              context.read<AppDependencies>().authBloc,
              errorHandler: context.read<AppDependencies>().errorHandler,
              googleAuth: context.read<AppDependencies>().googleAuth,
              context: context,
            ),
            child: Builder(
              builder: (context) => SignInScreen(
                vm: context.read<SignInScreenVm>(),
              ),
            ),
          ),
        );
}
