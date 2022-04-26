// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_screen_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignInScreenVm on _SignInScreenVm, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: '_SignInScreenVm.isLoading'))
          .value;

  late final _$vmStateAtom =
      Atom(name: '_SignInScreenVm.vmState', context: context);

  @override
  SignInVmState get vmState {
    _$vmStateAtom.reportRead();
    return super.vmState;
  }

  @override
  set vmState(SignInVmState value) {
    _$vmStateAtom.reportWrite(value, super.vmState, () {
      super.vmState = value;
    });
  }

  late final _$isPhoneValidAtom =
      Atom(name: '_SignInScreenVm.isPhoneValid', context: context);

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

  late final _$requestCodeAsyncAction =
      AsyncAction('_SignInScreenVm.requestCode', context: context);

  @override
  Future<void> requestCode(String phone) {
    return _$requestCodeAsyncAction.run(() => super.requestCode(phone));
  }

  late final _$_SignInScreenVmActionController =
      ActionController(name: '_SignInScreenVm', context: context);

  @override
  void verifyPhone(String phone) {
    final _$actionInfo = _$_SignInScreenVmActionController.startAction(
        name: '_SignInScreenVm.verifyPhone');
    try {
      return super.verifyPhone(phone);
    } finally {
      _$_SignInScreenVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  void signInWithGoogle() {
    final _$actionInfo = _$_SignInScreenVmActionController.startAction(
        name: '_SignInScreenVm.signInWithGoogle');
    try {
      return super.signInWithGoogle();
    } finally {
      _$_SignInScreenVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  void signInWithFacebook() {
    final _$actionInfo = _$_SignInScreenVmActionController.startAction(
        name: '_SignInScreenVm.signInWithFacebook');
    try {
      return super.signInWithFacebook();
    } finally {
      _$_SignInScreenVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  void signInWithVkontakte() {
    final _$actionInfo = _$_SignInScreenVmActionController.startAction(
        name: '_SignInScreenVm.signInWithVkontakte');
    try {
      return super.signInWithVkontakte();
    } finally {
      _$_SignInScreenVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
vmState: ${vmState},
isPhoneValid: ${isPhoneValid},
isLoading: ${isLoading}
    ''';
  }
}
