// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_screen_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterScreenVm on _RegisterScreenVm, Store {
  Computed<bool>? _$isFormEnteredComputed;

  @override
  bool get isFormEntered =>
      (_$isFormEnteredComputed ??= Computed<bool>(() => super.isFormEntered,
              name: '_RegisterScreenVm.isFormEntered'))
          .value;

  final _$vmStateAtom = Atom(name: '_RegisterScreenVm.vmState');

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

  final _$formKeyAtom = Atom(name: '_RegisterScreenVm.formKey');

  @override
  GlobalKey<FormState> get formKey {
    _$formKeyAtom.reportRead();
    return super.formKey;
  }

  @override
  set formKey(GlobalKey<FormState> value) {
    _$formKeyAtom.reportWrite(value, super.formKey, () {
      super.formKey = value;
    });
  }

  final _$nameControllerAtom = Atom(name: '_RegisterScreenVm.nameController');

  @override
  TextEditingController get nameController {
    _$nameControllerAtom.reportRead();
    return super.nameController;
  }

  @override
  set nameController(TextEditingController value) {
    _$nameControllerAtom.reportWrite(value, super.nameController, () {
      super.nameController = value;
    });
  }

  final _$surnameControllerAtom =
      Atom(name: '_RegisterScreenVm.surnameController');

  @override
  TextEditingController get surnameController {
    _$surnameControllerAtom.reportRead();
    return super.surnameController;
  }

  @override
  set surnameController(TextEditingController value) {
    _$surnameControllerAtom.reportWrite(value, super.surnameController, () {
      super.surnameController = value;
    });
  }

  final _$emailControllerAtom = Atom(name: '_RegisterScreenVm.emailController');

  @override
  TextEditingController get emailController {
    _$emailControllerAtom.reportRead();
    return super.emailController;
  }

  @override
  set emailController(TextEditingController value) {
    _$emailControllerAtom.reportWrite(value, super.emailController, () {
      super.emailController = value;
    });
  }

  final _$birthdayControllerAtom =
      Atom(name: '_RegisterScreenVm.birthdayController');

  @override
  TextEditingController get birthdayController {
    _$birthdayControllerAtom.reportRead();
    return super.birthdayController;
  }

  @override
  set birthdayController(TextEditingController value) {
    _$birthdayControllerAtom.reportWrite(value, super.birthdayController, () {
      super.birthdayController = value;
    });
  }

  final _$checkboxValueAtom = Atom(name: '_RegisterScreenVm.checkboxValue');

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

  final _$maskFormatterAtom = Atom(name: '_RegisterScreenVm.maskFormatter');

  @override
  MaskTextInputFormatter get maskFormatter {
    _$maskFormatterAtom.reportRead();
    return super.maskFormatter;
  }

  @override
  set maskFormatter(MaskTextInputFormatter value) {
    _$maskFormatterAtom.reportWrite(value, super.maskFormatter, () {
      super.maskFormatter = value;
    });
  }

  final _$_RegisterScreenVmActionController =
      ActionController(name: '_RegisterScreenVm');

  @override
  String? emailValidator(String? value) {
    final _$actionInfo = _$_RegisterScreenVmActionController.startAction(
        name: '_RegisterScreenVm.emailValidator');
    try {
      return super.emailValidator(value);
    } finally {
      _$_RegisterScreenVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? fullNameValidator(String? value) {
    final _$actionInfo = _$_RegisterScreenVmActionController.startAction(
        name: '_RegisterScreenVm.fullNameValidator');
    try {
      return super.fullNameValidator(value);
    } finally {
      _$_RegisterScreenVmActionController.endAction(_$actionInfo);
    }
  }

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
  void registerBtnClicked() {
    final _$actionInfo = _$_RegisterScreenVmActionController.startAction(
        name: '_RegisterScreenVm.registerBtnClicked');
    try {
      return super.registerBtnClicked();
    } finally {
      _$_RegisterScreenVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
vmState: ${vmState},
formKey: ${formKey},
nameController: ${nameController},
surnameController: ${surnameController},
emailController: ${emailController},
birthdayController: ${birthdayController},
checkboxValue: ${checkboxValue},
maskFormatter: ${maskFormatter},
isFormEntered: ${isFormEntered}
    ''';
  }
}
