import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/features/auth/register/register_screen.dart';
import 'package:where_to_go_today/src/features/auth/register/register_screen_vm.dart';

import 'main_screen.dart';
import 'main_screen_vm.dart';

/// Рроут экрана [MainScreen]
class MainScreenRoute extends MaterialPage<void> {
  MainScreenRoute()
      : super(
          child: Provider<RegisterScreenVm>(
            create: RegisterScreenVm.new,
            child: Builder(
              builder: (context) => RegisterScreen(
                vm: context.read<RegisterScreenVm>(),
              ),
            ),
          ),

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
