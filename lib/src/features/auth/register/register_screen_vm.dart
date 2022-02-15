import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/features/auth/services/auth_bloc.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/events/auth_event.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/states/auth_state.dart';

part 'register_screen_vm.g.dart';

/// ViewModel экрана [RegisterScreen]
class RegisterScreenVm = _RegisterScreenVm with _$RegisterScreenVm;

abstract class _RegisterScreenVm with Store {
  static const _emailRegexp =
      r'''(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])''';

  final BuildContext context;

  // final AuthBloc _bloc;

  @observable
  VmState vmState = VmState.idle;

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

  @computed
  bool get isFormEntered =>
      nameController.text.isNotEmpty &&
      surnameController.text.isNotEmpty &&
      emailController.text.isNotEmpty &&
      birthdayController.text.isNotEmpty &&
      checkboxValue;

  _RegisterScreenVm(this.context);

  // _RegisterScreenVm(this._bloc, ErrorHandler errorHandler, this.context)
  //     : super(errorHandler) {
  //   observeBloc<AuthState, AuthBloc>(_bloc, _handleBlocStates);
  // }

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
  @action
  void registerBtnClicked() {
    if (isFormEntered) {
      // _bloc.add(
      //   AuthEvent.register(
      //     name: nameController.text,
      //     surname: surnameController.text,
      //     email: emailController.text,
      //     birthdate: DateTime.parse(maskFormatter.getUnmaskedText()),
      //     agree: checkboxValue,
      //   ),
      // );

      // ignore: avoid_print
      print(DateTime.parse(maskFormatter.getUnmaskedText()));
    }

    if (!formKey.currentState!.validate()) {
      debugPrint('validate error');

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Заполните поля'),
        ),
      );

      return;
    }

    // if (error) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(
    //       content: Text(error.message),
    //     ),
    //   );

    //   return;
    // }
  }

  void _handleBlocStates(AuthState blocState) {
    debugPrint('blocState = ${blocState.runtimeType}');
    if (blocState is AuthStateIdle) {
      vmState = VmState.loading;
    } else if (blocState is AuthStateError) {
      vmState = VmState.error;
      vmState = VmState.idle;
    } else {
      vmState = VmState.idle;
    }
  }
}

// ignore: prefer-match-file-name
enum VmState { idle, loading, error }
