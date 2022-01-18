import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_screen.dart';
import 'main_screen_vm.dart';

/// Рроут экрана [MainScreen]
class MainScreenRoute extends MaterialPage {
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
