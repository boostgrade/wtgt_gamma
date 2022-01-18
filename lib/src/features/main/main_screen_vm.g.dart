// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_screen_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainScreenVm on _MainScreenVm, Store {
  final _$currentIndexAtom = Atom(name: '_MainScreenVm.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  final _$_MainScreenVmActionController =
      ActionController(name: '_MainScreenVm');

  @override
  void tabClicked(int index) {
    final _$actionInfo = _$_MainScreenVmActionController.startAction(
        name: '_MainScreenVm.tabClicked');
    try {
      return super.tabClicked(index);
    } finally {
      _$_MainScreenVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex}
    ''';
  }
}
