import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/di/app_dependencies.dart';
import 'package:where_to_go_today/src/features/auth/register/register_screen.dart';
import 'package:where_to_go_today/src/features/auth/register/register_screen_vm.dart';

/// Роут экрана [MainScreen]
@immutable
class RegisterRoute extends MaterialPage<void> {
  static const routeName = '/register';

  RegisterRoute()
      : super(
          child: Provider<RegisterScreenVm>(
            create: (context) => RegisterScreenVm(
              // context.read<AppDependencies>().authBloc,
              // context.read<AppDependencies>().errorHandler,
              context,
            ),
            child: Builder(
              builder: (context) => RegisterScreen(
                vm: context.read<RegisterScreenVm>(),
              ),
            ),
          ),
        );
}
