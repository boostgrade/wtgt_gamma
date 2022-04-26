// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_screen_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterScreenVm on _RegisterScreenVm, Store {
  late final _$vmStateAtom =
      Atom(name: '_RegisterScreenVm.vmState', context: context);

  @override
  RegisterVmState get vmState {
    _$vmStateAtom.reportRead();
    return super.vmState;
  }

  @override
  set vmState(RegisterVmState value) {
    _$vmStateAtom.reportWrite(value, super.vmState, () {
      super.vmState = value;
    });
  }

  late final _$checkboxValueAtom =
      Atom(name: '_RegisterScreenVm.checkboxValue', context: context);

  @override
  bool get checkboxValue {
    _$checkboxValueAtom.reportRead();
    return super.checkboxValue;
  }

  @override
  set checkboxValue(bool value) {
    _$checkboxValueAtom.reportWrite(value, super.checkboxValue, () {
      super.checkboxValue = value;
    });
  }

  late final _$isFormEnteredAtom =
      Atom(name: '_RegisterScreenVm.isFormEntered', context: context);

  @override
  bool get isFormEntered {
    _$isFormEnteredAtom.reportRead();
    return super.isFormEntered;
  }

  @override
  set isFormEntered(bool value) {
    _$isFormEnteredAtom.reportWrite(value, super.isFormEntered, () {
      super.isFormEntered = value;
    });
  }

  late final _$_RegisterScreenVmActionController =
      ActionController(name: '_RegisterScreenVm', context: context);

  @override
  void onChangedCheckbox(bool? value) {
    final _$actionInfo = _$_RegisterScreenVmActionController.startAction(
        name: '_RegisterScreenVm.onChangedCheckbox');
    try {
      return super.onChangedCheckbox(value);
    } finally {
      _$_RegisterScreenVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  void checkIsFormEntered() {
    final _$actionInfo = _$_RegisterScreenVmActionController.startAction(
        name: '_RegisterScreenVm.checkIsFormEntered');
    try {
      return super.checkIsFormEntered();
    } finally {
      _$_RegisterScreenVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
vmState: ${vmState},
checkboxValue: ${checkboxValue},
isFormEntered: ${isFormEntered}
    ''';
  }
}
