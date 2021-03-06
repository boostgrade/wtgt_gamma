import 'package:flutter/widgets.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/app_typography.dart';

void main() {
  testGoldens('App typography test', (tester) async {
    final builder = GoldenBuilder.column()
      ..addScenario(
        '',
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('s24w600h20 (Headline 2)', style: TextStyle(fontSize: 18)),
              Text('Hello world', style: AppTypography.s24w600h20()),
              SizedBox(height: 20),
              Text('s18w500h20ls (Body 2)', style: TextStyle(fontSize: 18)),
              Text('Hello world', style: AppTypography.s18w500h20ls()),
              SizedBox(height: 20),
              Text('s16w700h20 (Promo bold)', style: TextStyle(fontSize: 18)),
              Text('Hello world', style: AppTypography.s16w700h20()),
              SizedBox(height: 20),
              Text('s16w500h20 (Subtitle 1)', style: TextStyle(fontSize: 18)),
              Text('Hello world', style: AppTypography.s16w500h20()),
              SizedBox(height: 20),
              Text('s16w500h20ls (Body 1)', style: TextStyle(fontSize: 18)),
              Text('Hello world', style: AppTypography.s16w500h20ls()),
              SizedBox(height: 20),
              Text('s16w400h20 (Caption)', style: TextStyle(fontSize: 18)),
              Text('Hello world', style: AppTypography.s16w400h20()),
              SizedBox(height: 20),
              Text('s12w400h20 (Label)', style: TextStyle(fontSize: 18)),
              Text('Hello world', style: AppTypography.s12w400h20()),
              SizedBox(height: 20),
            ],
          ),
        ),
      );

    await tester.pumpWidgetBuilder(
      builder.build(),
      surfaceSize: const Size(256, 512),
    );

    await screenMatchesGolden(tester, 'app_typography');
  });
}
