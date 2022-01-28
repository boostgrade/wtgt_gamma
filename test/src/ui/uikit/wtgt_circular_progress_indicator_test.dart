import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/src/testing_tools.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_circular_progress_indicator.dart';

void main() {
  group('WtgtCircularProgressIndicator', () {
    testWidgets(
        'with size equal to 25 contains CircularProgressIndicator with strokeWidth equals to 2.5',
        (tester) async {
      const indicator1 = WtgtCircularProgressIndicator(side: 25);

      await tester.pumpWidgetBuilder(indicator1);

      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CircularProgressIndicator && widget.strokeWidth == 2.5,
        ),
        findsOneWidget,
      );
    });

    testWidgets(
        'with size equal to 123 contains CircularProgressIndicator with strokeWidth equals to 12.3',
        (tester) async {
      const indicator1 = WtgtCircularProgressIndicator(side: 123);

      await tester.pumpWidgetBuilder(indicator1);

      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CircularProgressIndicator && widget.strokeWidth == 12.3,
        ),
        findsOneWidget,
      );
    });
  });
}
