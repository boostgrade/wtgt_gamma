// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OnboardingVm on _OnboardingVm, Store {
  final _$isLastPageAtom = Atom(name: '_OnboardingVm.isLastPage');

  @override
  bool get isLastPage {
    _$isLastPageAtom.reportRead();
    return super.isLastPage;
  }

  @override
  set isLastPage(bool value) {
    _$isLastPageAtom.reportWrite(value, super.isLastPage, () {
      super.isLastPage = value;
    });
  }

  final _$_OnboardingVmActionController =
      ActionController(name: '_OnboardingVm');

  @override
  void changeButtonLabel(int pageIndex) {
    final _$actionInfo = _$_OnboardingVmActionController.startAction(
        name: '_OnboardingVm.changeButtonLabel');
    try {
      return super.changeButtonLabel(pageIndex);
    } finally {
      _$_OnboardingVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLastPage: ${isLastPage}
    ''';
  }
}
