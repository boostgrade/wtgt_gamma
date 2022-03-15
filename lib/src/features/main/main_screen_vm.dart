import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:routemaster/routemaster.dart';
import 'package:where_to_go_today/src/features/main/main_screen.dart';
import 'package:where_to_go_today/src/features/settings/ui/settings_route.dart';

part 'main_screen_vm.g.dart';

/// ViewModel экрана [MainScreen]
class MainScreenVm = _MainScreenVm with _$MainScreenVm;

abstract class _MainScreenVm with Store {
  final BuildContext context;

  @observable
  int currentIndex = 0;

  _MainScreenVm(this.context);

  @action
  void tabClicked(int index) {
    currentIndex = index;
  }
}
