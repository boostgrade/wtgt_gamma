import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main_screen_vm.dart';
import 'main_screen.dart';

/// Рроут экрана [MainScreen]
class MainScreenRoute extends MaterialPage {
  MainScreenRoute()
      : super(
          child: Provider(
            create: (ctx) => MainScreenVm(ctx),
            child: Builder(
              builder: (context) => MainScreen(
                vm: context.read<MainScreenVm>(),
              ),
            ),
          ),
        );
}
