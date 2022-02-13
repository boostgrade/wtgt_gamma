import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/di/app_dependencies.dart';
import 'package:where_to_go_today/src/features/auth/sign_in/sign_in_screen.dart';
import 'package:where_to_go_today/src/features/auth/sign_in/sign_in_vm.dart';

/// Роут экрана [SignInScreen]
class SignInRoute extends MaterialPage<void> {
  static const routeName = '/sign_in';

  SignInRoute()
      : super(
          child: Provider<SignInVm>(
            create: (ctx) => SignInVm(
              ctx.read<AppDependencies>().authBloc,
              ctx.read<AppDependencies>().errorHandler,
            ),
            child: Builder(
              builder: (context) => SignInScreen(
                store: context.read<SignInVm>(),
              ),
            ),
          ),
        );
}
