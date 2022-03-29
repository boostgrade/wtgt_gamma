import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/features/main/main_screen.dart';

part 'main_screen_vm.g.dart';

/// ViewModel экрана [MainScreen]
class MainScreenVm = _MainScreenVm with _$MainScreenVm;

abstract class _MainScreenVm with Store {
  final BuildContext context;

  @observable
  int currentIndex = 0;

  _MainScreenVm(this.context);

  @action
  // ignore: use_setters_to_change_properties
  void tabClicked(int index) {
    currentIndex = index;
  }
}
