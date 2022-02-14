import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/features/auth/sign_in/sign_in_screen.dart';

import 'main_screen.dart';

/// Роут экрана [MainScreen]
@immutable
class MainScreenRoute extends MaterialPage<void> {
  const MainScreenRoute()
      : super(
          child: const SignInScreen(),

          //  Provider<MainScreenVm>(
          //   create: MainScreenVm.new,
          //   child: Builder(
          //     builder: (context) => MainScreen(
          //       vm: context.read<MainScreenVm>(),
          //     ),
          //   ),
          // ),
        );
}
