// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignInVm on _SignInVm, Store {
  final _$vmStateAtom = Atom(name: '_SignInVm.vmState');

  @override
  VmState get vmState {
    _$vmStateAtom.reportRead();
    return super.vmState;
  }

  @override
  set vmState(VmState value) {
    _$vmStateAtom.reportWrite(value, super.vmState, () {
      super.vmState = value;
    });
  }

  final _$isPhoneValidAtom = Atom(name: '_SignInVm.isPhoneValid');

  @override
  bool get isPhoneValid {
    _$isPhoneValidAtom.reportRead();
    return super.isPhoneValid;
  }

  @override
  set isPhoneValid(bool value) {
    _$isPhoneValidAtom.reportWrite(value, super.isPhoneValid, () {
      super.isPhoneValid = value;
    });
  }

  final _$requestCodeAsyncAction = AsyncAction('_SignInVm.requestCode');

  @override
  Future<void> requestCode(String phone) {
    return _$requestCodeAsyncAction.run(() => super.requestCode(phone));
  }

  final _$_SignInVmActionController = ActionController(name: '_SignInVm');

  @override
  void verifyPhone(String phone) {
    final _$actionInfo =
        _$_SignInVmActionController.startAction(name: '_SignInVm.verifyPhone');
    try {
      return super.verifyPhone(phone);
    } finally {
      _$_SignInVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
vmState: ${vmState},
isPhoneValid: ${isPhoneValid}
    ''';
  }
}
