import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:where_to_go_today/src/core/ui/res/colors/project_colors.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/app_typography.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({Key? key}) : super(key: key);

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  final _codeController = TextEditingController();

  final int _timerSecs = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/3.0x/wtgt_logo.png',
                  height: 254,
                ),
              ),
              const SizedBox(height: 22),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _codeController,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                validator: _codeValidator,
                maxLength: 6,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]+')),
                ],
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)?.codeFromSms,
                  helperText: '',
                ),
              ),
              const SizedBox(height: 12),
              RichText(
                text: TextSpan(
                  text: AppLocalizations.of(context)?.newCodeIn,
                  style: const AppTypography.s16w400h20(),
                  children: [
                    TextSpan(
                      // TODO(any): поменять статичный таймер
                      text: '$_timerSecs',
                      style: const AppTypography.s16w500h20(
                        color: ProjectColors.cardColor,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)?.seconds,
                      style: const AppTypography.s16w500h20(
                        color: ProjectColors.cardColor,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: _calcBottomPadding(context)),
              TextButton(
                onPressed: _onSendCode,
                child: Text(AppLocalizations.of(context)!.sendCode),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? _codeValidator(String? value) {
    if (value == null || value.isEmpty || value.length != 6) {
      return AppLocalizations.of(context)?.valueIsIncorrect;
    }

    return null;
  }

  void _onSendCode() {
    if (_codeController.text.isNotEmpty && _codeController.text.length == 6) {
      debugPrint('send code');
    } else {
      debugPrint('not send code');
    }
  }

  double _calcBottomPadding(BuildContext buildContext) {
    const topBlockHeight = 450;
    const bottomBlockHeight = 70;
    final screenHeight = MediaQuery.of(buildContext).size.height;
    final viewInsets = MediaQuery.of(buildContext).viewInsets;
    final bottomPadding = screenHeight -
        topBlockHeight -
        bottomBlockHeight -
        viewInsets.bottom -
        viewInsets.top;

    return max(bottomPadding, 24);
  }
}
