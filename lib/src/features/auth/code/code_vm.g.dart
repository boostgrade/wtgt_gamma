// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CodeVm on _CodeVm, Store {
  Computed<bool>? _$canRequestCodeComputed;

  @override
  bool get canRequestCode =>
      (_$canRequestCodeComputed ??= Computed<bool>(() => super.canRequestCode,
              name: '_CodeVm.canRequestCode'))
          .value;
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading => (_$isLoadingComputed ??=
          Computed<bool>(() => super.isLoading, name: '_CodeVm.isLoading'))
      .value;

  final _$vmStateAtom = Atom(name: '_CodeVm.vmState');

  @override
  CodeVmState get vmState {
    _$vmStateAtom.reportRead();
    return super.vmState;
  }

  @override
  set vmState(CodeVmState value) {
    _$vmStateAtom.reportWrite(value, super.vmState, () {
      super.vmState = value;
    });
  }

  final _$isValidCodeAtom = Atom(name: '_CodeVm.isValidCode');

  @override
  bool get isValidCode {
    _$isValidCodeAtom.reportRead();
    return super.isValidCode;
  }

  @override
  set isValidCode(bool value) {
    _$isValidCodeAtom.reportWrite(value, super.isValidCode, () {
      super.isValidCode = value;
    });
  }

  final _$countdownAtom = Atom(name: '_CodeVm.countdown');

  @override
  int get countdown {
    _$countdownAtom.reportRead();
    return super.countdown;
  }

  @override
  set countdown(int value) {
    _$countdownAtom.reportWrite(value, super.countdown, () {
      super.countdown = value;
    });
  }

  final _$requestCodeAsyncAction = AsyncAction('_CodeVm.requestCode');

  @override
  Future<void> requestCode(String phone) {
    return _$requestCodeAsyncAction.run(() => super.requestCode(phone));
  }

  final _$_CodeVmActionController = ActionController(name: '_CodeVm');

  @override
  void startTimer() {
    final _$actionInfo =
        _$_CodeVmActionController.startAction(name: '_CodeVm.startTimer');
    try {
      return super.startTimer();
    } finally {
      _$_CodeVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateCode(String? value) {
    final _$actionInfo =
        _$_CodeVmActionController.startAction(name: '_CodeVm.validateCode');
    try {
      return super.validateCode(value);
    } finally {
      _$_CodeVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  void sendCode(String code) {
    final _$actionInfo =
        _$_CodeVmActionController.startAction(name: '_CodeVm.sendCode');
    try {
      return super.sendCode(code);
    } finally {
      _$_CodeVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
vmState: ${vmState},
isValidCode: ${isValidCode},
countdown: ${countdown},
canRequestCode: ${canRequestCode},
isLoading: ${isLoading}
    ''';
  }
}
