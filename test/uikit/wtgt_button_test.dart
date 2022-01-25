import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_circular_progress_indicator.dart';

void main() {
  Widget _wrapper(Widget child) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: child,
    );
  }

  group(
    'WtgtButton tests',
    () {
      testWidgets(
        'Если передаем loading==true должны увидеть лоадер',
        (tester) async {
          const label = 'hello!';
          var button = const WtgtButton(
            label: label,
          );
          await tester.pumpWidget(_wrapper(button));
          final normalFinder = find.text(label);
          final indicatorFinder = find.byType(WtgtCircularProgressIndicator);
          expect(normalFinder, findsOneWidget);
          expect(indicatorFinder, findsNothing);

          button = const WtgtButton(
            label: label,
            loading: true,
          );
          await tester.pumpWidget(_wrapper(button));
          expect(normalFinder, findsNothing);
          expect(indicatorFinder, findsOneWidget);
        },
      );
    },
  );
}
