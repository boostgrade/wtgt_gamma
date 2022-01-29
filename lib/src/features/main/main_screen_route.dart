import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/features/auth/register/register_screen.dart';

import 'main_screen.dart';
// import 'main_screen_vm.dart';

/// Рроут экрана [MainScreen]
class MainScreenRoute extends MaterialPage<void> {
  const MainScreenRoute()
      : super(
          child: const RegisterScreen(),
          // TODO(Dmitry Dudunov): убрать при появлении авторизации
          // Provider<MainScreenVm>(
          //   create: MainScreenVm.new,
          //   child: Builder(
          //     builder: (context) => MainScreen(
          //       vm: context.read<MainScreenVm>(),
          //     ),
          //   ),
          // ),
        );
}
