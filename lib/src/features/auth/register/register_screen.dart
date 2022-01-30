import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';

const _emailRegexp =
    r'''(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])''';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _birthdayController = TextEditingController();

  late bool _checkboxValue;

  late MaskTextInputFormatter _maskFormatter;

  @override
  void initState() {
    super.initState();
    _checkboxValue = false;

    _maskFormatter = MaskTextInputFormatter(
      mask: '##/##/####',
    );
  }

  @override
  Widget build(BuildContext context) {
    final _isFormEntered = _nameController.text.isNotEmpty &&
        _surnameController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _birthdayController.text.isNotEmpty &&
        _checkboxValue;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 125),
          child: Form(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _nameController,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[А-Яа-яёЁ]')),
                  ],
                  validator: _fullNameValidator,
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)?.name,
                    helperText: '',
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _surnameController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[А-Яа-яёЁ-]')),
                  ],
                  validator: _fullNameValidator,
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)?.surname,
                    helperText: '',
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _emailController,
                  validator: _emailValidator,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)?.email,
                    helperText: '',
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _birthdayController,
                  validator: _birthdayValidator,
                  keyboardType: TextInputType.datetime,
                  textInputAction: TextInputAction.done,
                  inputFormatters: [_maskFormatter],
                  decoration: InputDecoration(
                    label: Text(AppLocalizations.of(context)!.birthday),
                    hintText: AppLocalizations.of(context)!.birthdayMask,
                    helperText: '',
                  ),
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _checkboxValue,
                  onChanged: _onChangedCheckbox,
                  title: Text(
                    AppLocalizations.of(context)!.acceptUserAgreement,
                  ),
                ),
                SizedBox(height: _calcBottomPadding()),
                WtgtButton(
                  onPressed: !_isFormEntered ? null : _registerBtnClicked,
                  label: AppLocalizations.of(context)!.signUp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? _birthdayValidator(String? value) {
    if (!_maskFormatter.isFill()) return null;
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

  double _calcBottomPadding() {
    const topBlockHeight = 300;
    const bottomBlockHeight = 370;
    final screenHeight = MediaQuery.of(context).size.height;
    final viewInsets = MediaQuery.of(context).viewInsets;
    final bottomPadding =
        screenHeight - topBlockHeight - bottomBlockHeight - viewInsets.bottom;

    return bottomPadding < 24 ? 24 : bottomPadding;
  }

  String? _emailValidator(String? value) {
    final regex = RegExp(_emailRegexp, caseSensitive: false);

    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return AppLocalizations.of(context)?.valueIsIncorrect;
    }

    return null;
  }

  String? _fullNameValidator(String? value) {
    if (value == null ||
        value.isEmpty ||
        value.characters.first == '-' ||
        value.characters.last == '-') {
      return AppLocalizations.of(context)?.valueIsIncorrect;
    }

    return null;
  }

  void _onChangedCheckbox(bool? value) {
    if (value != null) {
      setState(() {
        _checkboxValue = value;
      });
    }
  }

  void _registerBtnClicked() {
    final _isFormEntered = _nameController.text.isNotEmpty &&
        _surnameController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _birthdayController.text.isNotEmpty &&
        _checkboxValue;

    if (_isFormEntered) {
      //* для отправки данных дня рождения расскоментировать следующий код:
      // _maskFormatter.getUnmaskedText();

      // ignore: avoid_print
      print('register');
    } else {
      // ignore: avoid_print
      print('not register');
    }
  }
}
