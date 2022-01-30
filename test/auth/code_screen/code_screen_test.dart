import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:where_to_go_today/src/core/ui/res/colors/project_colors.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/app_typography.dart';
import 'package:where_to_go_today/src/res/theme/app_theme.dart';

void main() {
  testGoldens(
    'Code screen test',
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
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child:
                                Image.asset('assets/images/3.0x/wtgt_logo.png'),
                          ),
                          const SizedBox(height: 22),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.done,
                            maxLength: 6,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                RegExp('[0-9]+'),
                              ),
                            ],
                            decoration: const InputDecoration(
                              hintText: 'Код из смс',
                              helperText: '',
                            ),
                          ),
                          const SizedBox(height: 12),
                          RichText(
                            text: const TextSpan(
                              text: 'Новый код через: ',
                              style: AppTypography.s16w400h20(),
                              children: [
                                TextSpan(
                                  text: '30',
                                  style: AppTypography.s16w500h20(
                                    color: ProjectColors.cardColor,
                                  ),
                                ),
                                TextSpan(
                                  text: ' секунд',
                                  style: AppTypography.s16w500h20(
                                    color: ProjectColors.cardColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  floatingActionButtonLocation:
                      FloatingActionButtonLocation.centerFloat,
                  floatingActionButton: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: TextButton(
                      // ignore: no-empty-block
                      onPressed: () {},
                      child: const Text('Отправить код'),
                    ),
                  ),
                ),
              );
            },
          ),
        );

      await tester.pumpDeviceBuilder(builder);

      await screenMatchesGolden(tester, 'code_screen');
    },
  );
}
