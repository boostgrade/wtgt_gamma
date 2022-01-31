import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:where_to_go_today/src/features/auth/register/register_screen_vm.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';

class RegisterScreen extends StatefulWidget {
  final RegisterScreenVm vm;

  const RegisterScreen({
    required this.vm,
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
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
                      controller: widget.vm.nameController,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[А-Яа-яёЁ]')),
                      ],
                      validator: widget.vm.fullNameValidator,
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of(context)?.name,
                        helperText: '',
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: widget.vm.surnameController,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp('[А-Яа-яёЁ-]'),
                        ),
                      ],
                      validator: widget.vm.fullNameValidator,
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of(context)?.surname,
                        helperText: '',
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: widget.vm.emailController,
                      validator: widget.vm.emailValidator,
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
                      controller: widget.vm.birthdayController,
                      validator: widget.vm.birthdayValidator,
                      keyboardType: TextInputType.datetime,
                      textInputAction: TextInputAction.done,
                      inputFormatters: [widget.vm.maskFormatter],
                      decoration: InputDecoration(
                        label: Text(AppLocalizations.of(context)!.birthday),
                        hintText: AppLocalizations.of(context)!.birthdayMask,
                        helperText: '',
                      ),
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      value: widget.vm.checkboxValue,
                      onChanged: widget.vm.onChangedCheckbox,
                      title: Text(
                        AppLocalizations.of(context)!.acceptUserAgreement,
                      ),
                    ),
                    SizedBox(height: _calcBottomPadding()),
                    WtgtButton(
                      onPressed: widget.vm.isFormEntered
                          ? widget.vm.registerBtnClicked
                          : null,
                          
                      label: AppLocalizations.of(context)!.signUp,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
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
}
