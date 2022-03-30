import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_exception.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/features/auth/register/register_vm_state.dart';
import 'package:where_to_go_today/src/features/auth/services/auth_bloc.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/events/auth_event.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/states/auth_state.dart';

part 'register_screen_vm.g.dart';

/// ViewModel экрана [RegisterScreen]
class RegisterScreenVm = _RegisterScreenVm with _$RegisterScreenVm;

abstract class _RegisterScreenVm extends ViewModel with Store {
  static const _emailRegexp =
      r'''(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])''';

  final BuildContext context;

  final AuthBloc _bloc;

  @observable
  RegisterVmState vmState = RegisterVmState.idle;

  TextEditingController nameController = TextEditingController();

  TextEditingController surnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController birthdayController = TextEditingController();

  @observable
  bool checkboxValue = false;

  MaskTextInputFormatter maskFormatter = MaskTextInputFormatter(
    mask: '##/##/####',
  );

  @observable
  bool isFormEntered = false;

  bool get isLoading => vmState == RegisterVmState.loading;

  _RegisterScreenVm(
    this._bloc, {
    required ErrorHandler errorHandler,
    required this.context,
  }) : super(errorHandler) {
    observeBloc<AuthState, AuthBloc>(_bloc, _handleBlocStates);
  }

  String? emailValidator(String? value) {
    final regex = RegExp(_emailRegexp, caseSensitive: false);

    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return AppLocalizations.of(context)?.valueIsIncorrect;
    }

    return null;
  }

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
    try {
      final birthday = DateFormat('dd/MM/yyyy').parseStrict(value ?? '');
      final now = DateTime.now();
      final hundredYearsAgo = now.subtract(const Duration(days: 365 * 100));

      return birthday.isAfter(now) || birthday.isBefore(hundredYearsAgo)
          ? AppLocalizations.of(context)?.valueIsIncorrect
          : null;
    } on FormatException {
      return AppLocalizations.of(context)?.valueIsIncorrect;
    }
  }

  @action
  void onChangedCheckbox(bool? value) {
    if (value != null) {
      checkboxValue = value;

      checkIsFormEntered();
    }
  }

  @action
  void checkIsFormEntered() {
    // ignore: prefer-conditional-expressions
    if (nameController.text.isNotEmpty &&
        surnameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        birthdayController.text.isNotEmpty &&
        checkboxValue) {
      isFormEntered = true;
    } else {
      isFormEntered = false;
    }
  }

  void registerBtnClicked() {
    if (isFormEntered) {
      _bloc.add(
        AuthEvent.register(
          name: nameController.text,
          surname: surnameController.text,
          email: emailController.text,
          agree: checkboxValue,
          birthdate: DateFormat('dd/MM/yyyy').parse(
            maskFormatter.getMaskedText(),
          ),
        ),
      );
    }
  }

  void disposeControllers() {
    nameController.dispose();
    surnameController.dispose();
    birthdayController.dispose();
    emailController.dispose();
  }

  void _handleBlocStates(AuthState blocState) {
    if (blocState is AuthStateIdle) {
      vmState = RegisterVmState.loading;
    } else if (blocState is AuthStateRegister) {
      vmState = RegisterVmState.success;
    } else if (blocState is AuthStateError) {
      vmState = RegisterVmState.error;
      _bloc.onError(AuthorizationException(), blocState.stackTrace);
      vmState = RegisterVmState.idle;
    } else {
      vmState = RegisterVmState.idle;
    }
  }
}
