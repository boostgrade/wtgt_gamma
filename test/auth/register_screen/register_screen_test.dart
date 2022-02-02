import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:where_to_go_today/src/features/auth/register/register_button_state.dart';
import 'package:where_to_go_today/src/res/theme/app_theme.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';

void main() {
  testGoldens(
    'Register screen test',
    (tester) async {
      final builder = DeviceBuilder()
        ..addScenario(
          widget: Builder(
            builder: (context) {
              return Theme(
                data: AppTheme.lightTheme,
                child: Scaffold(
                  body: SafeArea(
                    child: SingleChildScrollView(
                      padding:
                          const EdgeInsets.only(left: 24, right: 24, top: 125),
                      child: Form(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                hintText: 'Имя',
                                helperText: '',
                              ),
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                hintText: 'Фамилия',
                                helperText: '',
                              ),
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                hintText: 'E-mail',
                                helperText: '',
                              ),
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              keyboardType: TextInputType.datetime,
                              textInputAction: TextInputAction.done,
                              decoration: const InputDecoration(
                                hintText: '##/##/####',
                                helperText: '',
                                labelText: 'День рождения',
                              ),
                            ),
                            CheckboxListTile(
                              // ignore: no-empty-block
                              onChanged: (value) {},
                              controlAffinity: ListTileControlAffinity.leading,
                              value: true,
                              title: const Text(
                                'Я принимаю пользовательское соглашение',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  floatingActionButtonLocation:
                      FloatingActionButtonLocation.centerFloat,
                  floatingActionButton: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: WtgtButton(
                      // ignore: no-empty-block
                      onPressed: () {},
                      label: 'Зарегестрироваться',
                    ),
                  ),
                ),
              );
            },
          ),
        );

      await tester.pumpDeviceBuilder(builder);

      await screenMatchesGolden(tester, 'register_screen');
    },
  );
}
