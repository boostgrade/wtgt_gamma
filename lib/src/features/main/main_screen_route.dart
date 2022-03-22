import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/features/main/main_screen_vm.dart';

import 'main_screen.dart';

/// Роут экрана [MainScreen]
@immutable
class MainScreenRoute extends MaterialPage<void> {
  static const routeName = '/main-screen';

  MainScreenRoute()
      : super(
          child: Provider<MainScreenVm>(
            create: MainScreenVm.new,
            child: Builder(
              builder: (context) => MainScreen(
                vm: context.read<MainScreenVm>(),
              ),
            ),
          ),
        );
}
