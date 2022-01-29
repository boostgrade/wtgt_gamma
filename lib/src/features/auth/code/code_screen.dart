import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:where_to_go_today/src/core/ui/res/colors/project_colors.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/app_typography.dart';
import '../keyboard_listener.dart' as keyboard_listener;

class CodeScreen extends StatefulWidget {
  const CodeScreen({Key? key}) : super(key: key);

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  final _codeController = TextEditingController();

  final int _timerSecs = 30;

  late bool _isKeyboardVisible;
  late keyboard_listener.KeyboardListener _keyboardListener;

  @override
  void initState() {
    super.initState();
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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/3.0x/wtgt_logo.png'),
              const SizedBox(height: 22),
              TextField(
                controller: _codeController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)?.codeFromSms,
                ),
                maxLength: 6,
              ),
              // TODO(any): поменять статичный таймер
              RichText(
                text: TextSpan(
                  text: AppLocalizations.of(context)?.newCodeIn,
                  style: const AppTypography.s16w400h20(),
                  children: [
                    TextSpan(
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
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _isKeyboardVisible
          ? null
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: TextButton(
                onPressed: () {
                  // TODO(any): реализовать функционал отправки кода
                },
                child: Text(AppLocalizations.of(context)!.sendCode),
              ),
            ),
    );
  }

  void _keyboardHandle(bool isVisible) {
    setState(() {
      _isKeyboardVisible = isVisible;
    });
  }
}
