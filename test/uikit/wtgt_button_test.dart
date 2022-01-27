import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:where_to_go_today/src/res/theme/app_theme.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';

void main() {
  testGoldens('WtgtButton test', (tester) async {
    const label = 'Hello';
    const width = 200.0;
    final builder = GoldenBuilder.column()
      ..addScenario(
        'Enable',
        WtgtButton(
          label: label,
          width: width,
          onPressed: () => debugPrint('onPressed'),
        ),
      )
      ..addScenario(
        'Disable',
        const WtgtButton(
          label: label,
          width: width,
        ),
      )
      ..addScenario(
        'Loading',
        const WtgtButton(
          label: label,
          width: width,
          loading: true,
        ),
      );
    await tester.pumpWidgetBuilder(
      builder.build(),
      wrapper: materialAppWrapper(
        theme: AppTheme.lightTheme,
      ),
    );
    await screenMatchesGolden(
      tester,
      'wtgt_button',
      customPump: (widget) => widget.pump(
        const Duration(milliseconds: 500),
      ),
    );
  });
}
