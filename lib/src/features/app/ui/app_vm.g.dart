// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppVm on _AppVm, Store {
  final _$themeModeAtom = Atom(name: '_AppVm.themeMode');

  @override
  ThemeMode? get themeMode {
    _$themeModeAtom.reportRead();
    return super.themeMode;
  }

  @override
  set themeMode(ThemeMode? value) {
    _$themeModeAtom.reportWrite(value, super.themeMode, () {
      super.themeMode = value;
    });
  }

  @override
  String toString() {
    return '''
themeMode: ${themeMode}
    ''';
  }
}
