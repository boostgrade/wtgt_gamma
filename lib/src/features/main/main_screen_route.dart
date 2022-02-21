import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/di/app_dependencies.dart';
import 'package:where_to_go_today/src/features/auth/sign_in/sign_in_screen.dart';
import 'package:where_to_go_today/src/features/auth/sign_in/sign_in_screen_vm.dart';
import 'package:where_to_go_today/src/features/main/main_screen_vm.dart';

import 'main_screen.dart';

/// Роут экрана [MainScreen]
@immutable
class MainScreenRoute extends MaterialPage<void> {
  MainScreenRoute()
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
