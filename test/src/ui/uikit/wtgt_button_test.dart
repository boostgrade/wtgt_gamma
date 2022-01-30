import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:where_to_go_today/src/res/theme/app_theme.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';

void main() {
  group('WtgtButton', () {
    testWidgets(
      'sould hide label for button with loading indicator',
      (tester) async {
        const text = 'hello!';

        await tester.pumpWidgetBuilder(const WtgtButton(label: text));
        expect(find.text(text), findsOneWidget);

        await tester.pumpWidgetBuilder(
          const WtgtButton(
            label: text,
            loading: true,
          ),
        );
        expect(find.text(text), findsNothing);
      },
    );

    testGoldens('golden test', (tester) async {
      const text = 'Hello';
      const width = 200.0;

      final builder = GoldenBuilder.column()
        ..addScenario(
          'Enable',
          WtgtButton(
            label: text,
            width: width,
            onPressed: () => debugPrint('onPressed'),
          ),
        )
        ..addScenario(
          'Disable',
          const WtgtButton(
            label: text,
            width: width,
          ),
        )
        ..addScenario(
          'Loading',
          const WtgtButton(
            label: text,
            width: width,
            loading: true,
          ),
        );

      await tester.pumpWidgetBuilder(
        builder.build(),
        wrapper: materialAppWrapper(
          theme: AppTheme.lightTheme,
        ),
        surfaceSize: const Size(224, 288),
      );

      await screenMatchesGolden(
        tester,
        'wtgt_button',
        customPump: (widget) => widget.pump(
          const Duration(milliseconds: 500),
        ),
      );
    });
  });
}
