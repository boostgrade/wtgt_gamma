// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfileVm on _ProfileVm, Store {
  late final _$profileAtom = Atom(name: '_ProfileVm.profile', context: context);

  @override
  User get profile {
    _$profileAtom.reportRead();
    return super.profile;
  }

  @override
  set profile(User value) {
    _$profileAtom.reportWrite(value, super.profile, () {
      super.profile = value;
    });
  }

  late final _$initAtom = Atom(name: '_ProfileVm.init', context: context);

  @override
  bool get init {
    _$initAtom.reportRead();
    return super.init;
  }

  @override
  set init(bool value) {
    _$initAtom.reportWrite(value, super.init, () {
      super.init = value;
    });
  }

  late final _$loadingAtom = Atom(name: '_ProfileVm.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$_ProfileVmActionController =
      ActionController(name: '_ProfileVm', context: context);

  @override
  void getProfile() {
    final _$actionInfo =
        _$_ProfileVmActionController.startAction(name: '_ProfileVm.getProfile');
    try {
      return super.getProfile();
    } finally {
      _$_ProfileVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onAvatarUpdateFromCamera() {
    final _$actionInfo = _$_ProfileVmActionController.startAction(
        name: '_ProfileVm.onAvatarUpdateFromCamera');
    try {
      return super.onAvatarUpdateFromCamera();
    } finally {
      _$_ProfileVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onEditUserDetails() {
    final _$actionInfo = _$_ProfileVmActionController.startAction(
        name: '_ProfileVm.onEditUserDetails');
    try {
      return super.onEditUserDetails();
    } finally {
      _$_ProfileVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onSettings() {
    final _$actionInfo =
        _$_ProfileVmActionController.startAction(name: '_ProfileVm.onSettings');
    try {
      return super.onSettings();
    } finally {
      _$_ProfileVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onFavoritePlace(int id) {
    final _$actionInfo = _$_ProfileVmActionController.startAction(
        name: '_ProfileVm.onFavoritePlace');
    try {
      return super.onFavoritePlace(id);
    } finally {
      _$_ProfileVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onProfileSignOut() {
    final _$actionInfo = _$_ProfileVmActionController.startAction(
        name: '_ProfileVm.onProfileSignOut');
    try {
      return super.onProfileSignOut();
    } finally {
      _$_ProfileVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
profile: ${profile},
init: ${init},
loading: ${loading}
    ''';
  }
}
