import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/features/auth/code/code_screen.dart';

import 'main_screen.dart';
import 'main_screen_vm.dart';

/// Рроут экрана [MainScreen]
class MainScreenRoute extends MaterialPage<void> {
  MainScreenRoute()
      : super(
          child: const CodeScreen(),

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
