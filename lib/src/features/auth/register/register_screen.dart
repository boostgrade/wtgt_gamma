import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import './keyboard_listener.dart' as keyboard_listener;

const _emailRegexp =
    r'''(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])''';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _birthdayController = TextEditingController();

  late bool _checkboxValue;

  late bool _isKeyboardVisible;
  late keyboard_listener.KeyboardListener _keyboardListener;

  @override
  void initState() {
    super.initState();
    _checkboxValue = false;

    _isKeyboardVisible = false;

    _keyboardListener = keyboard_listener.KeyboardListener()
      ..addListener(onChange: _keyboardHandle);
  }

  @override
  void dispose() {
    _keyboardListener.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 125),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _nameController,
                  validator: _fullNameValidator,
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)?.name,
                  ),
                ),
                const SizedBox(height: 36),
                TextFormField(
                  controller: _surnameController,
                  validator: _fullNameValidator,
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)?.surname,
                  ),
                ),
                const SizedBox(height: 36),
                TextFormField(
                  controller: _emailController,
                  validator: _emailValidator,
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)?.email,
                  ),
                ),
                const SizedBox(height: 36),
                TextFormField(
                  controller: _birthdayController,
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)?.birthday,
                  ),
                ),
                const SizedBox(height: 38),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _checkboxValue,
                  onChanged: _onChangedCheckbox,
                  title: Text(
                    AppLocalizations.of(context)!.acceptUserAgreement,
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _isKeyboardVisible
            ? null
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextButton(
                  onPressed: _registerBtnClicked,
                  child: Text(AppLocalizations.of(context)!.signUp),
                ),
              ),
      ),
    );
  }

  String? _emailValidator(String? value) {
    final regex = RegExp(_emailRegexp, caseSensitive: false);

    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return AppLocalizations.of(context)?.emailError;
    }

    return null;
  }

  String? _fullNameValidator(String? value) {
    const regexConst = '[а-яё-]';

    final regex = RegExp(regexConst);

    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return AppLocalizations.of(context)?.fullnameError;
    }

    return null;
  }

  void _keyboardHandle(bool isVisible) {
    setState(() {
      _isKeyboardVisible = isVisible;
    });
  }

  void _onChangedCheckbox(bool? value) {
    if (value != null) {
      setState(() {
        _checkboxValue = value;
      });
    }
  }

  void _registerBtnClicked() {
    if (_formKey.currentState!.validate()) {
      // ignore: avoid_print
      print('register');
    }
    // ignore: avoid_print
    print('not register');
  }
}
