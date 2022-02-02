import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/features/auth/register/register_button_state.dart';

part 'register_screen_vm.g.dart';

// ignore: prefer-match-file-name

/// ViewModel экрана [RegisterScreen]
class RegisterScreenVm = _RegisterScreenVm with _$RegisterScreenVm;

abstract class _RegisterScreenVm with Store {
  static const _emailRegexp =
      r'''(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])''';
  final BuildContext context;

  @observable
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @observable
  TextEditingController nameController = TextEditingController();

  @observable
  TextEditingController surnameController = TextEditingController();

  @observable
  TextEditingController emailController = TextEditingController();

  @observable
  TextEditingController birthdayController = TextEditingController();

  @observable
  bool checkboxValue = false;

  @observable
  MaskTextInputFormatter maskFormatter = MaskTextInputFormatter(
    mask: '##/##/####',
  );

  @observable
  RegisterButtonState buttonState = RegisterButtonState.fieldsNotEnteredError;

  @computed
  bool get isFormEntered =>
      nameController.text.isNotEmpty &&
      surnameController.text.isNotEmpty &&
      emailController.text.isNotEmpty &&
      birthdayController.text.isNotEmpty &&
      checkboxValue;

  _RegisterScreenVm(this.context);

  @action
  String? emailValidator(String? value) {
    final regex = RegExp(_emailRegexp, caseSensitive: false);

    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return AppLocalizations.of(context)?.valueIsIncorrect;
    }

    return null;
  }

  @action
  String? fullNameValidator(String? value) {
    if (value == null ||
        value.isEmpty ||
        value.characters.first == '-' ||
        value.characters.last == '-') {
      return AppLocalizations.of(context)?.valueIsIncorrect;
    }

    return null;
  }

  String? birthdayValidator(String? value) {
    if (maskFormatter.isFill()) return null;
    try {
      final birthday = DateFormat('dd/MM/yyyy').parseStrict(value ?? '');
      final now = DateTime.now();
      final hundredYearsAgo = now.subtract(const Duration(days: 365 * 100));
      if (birthday.isAfter(now) || birthday.isBefore(hundredYearsAgo)) {
        return AppLocalizations.of(context)?.valueIsIncorrect;
      }

      return null;
    } on FormatException {
      return AppLocalizations.of(context)?.valueIsIncorrect;
    }
  }

  @action
  void onChangedCheckbox(bool? value) {
    if (value != null) {
      checkboxValue = value;
    }
  }

  @action
  void registerBtnClicked() {
    if (isFormEntered) {
      debugPrint('register');

      buttonState = RegisterButtonState.success;

      debugPrint('name: ${nameController.text}');
      debugPrint('surname: ${surnameController.text}');
      debugPrint('email: ${emailController.text}');
      debugPrint('birthday: ${maskFormatter.getUnmaskedText()}');
      debugPrint('userAgreement: $checkboxValue');
    }

    if (!formKey.currentState!.validate()) {
      debugPrint('validate error');

      buttonState = RegisterButtonState.validateError;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Заполните поля'),
        ),
      );

      return;
    }

    // TODO(Dima): при появлении блока добавить состояние ошибки запроса
    // if (error) {
    //   buttonState = RegisterButtonState.queryError;

    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(
    //       content: Text(error.message),
    //     ),
    //   );

    //   buttonState = RegisterButtonState.fieldsNotEnteredError;

    //   return;
    // }
  }
}
