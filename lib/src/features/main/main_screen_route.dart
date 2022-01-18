import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_screen.dart';
import 'main_screen_vm.dart';

/// Рроут экрана [MainScreen]
class MainScreenRoute extends MaterialPage {
  MainScreenRoute()
      : super(
          child: Provider(
            create: MainScreenVm,
            child: Builder(
              builder: (context) => MainScreen(
                vm: context.read<MainScreenVm>(),
              ),
            ),
          ),
        );
}
