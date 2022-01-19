import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';

void main() {
  group(
    'WtgtButton tests',
    () {
      testWidgets(
        'Если передаем loading==true должны увидеть лоадер',
        (tester) async {
          const text = 'hello!';
          var loading = false;

          final btn = WtgtButton(
            child: const Text(text),
            loading: loading,
          );

          await tester.pumpWidget(btn);
          final normalFinder = find.text(text);

          expect(normalFinder, findsOneWidget);

          loading = true;

          await tester.pump();

          expect(normalFinder, findsNothing);
        },
      );
    },
  );
}
