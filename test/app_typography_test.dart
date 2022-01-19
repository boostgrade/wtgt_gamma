import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/fonts_test_widget.dart';

void main() {
  group('GoldenBuilder', () {
    testGoldens('App typography test', (tester) async {
      await loadAppFonts();
      final fontLoader = FontLoader('Montserrat')
        ..addFont(
          rootBundle
              .load('assets/fonts/montserrat-v21-latin_cyrillic-regular.ttf'),
        )
        ..addFont(
          rootBundle.load('assets/fonts/montserrat-v21-latin_cyrillic-500.ttf'),
        )
        ..addFont(
          rootBundle.load('assets/fonts/montserrat-v21-latin_cyrillic-600.ttf'),
        )
        ..addFont(
          rootBundle.load('assets/fonts/montserrat-v21-latin_cyrillic-700.ttf'),
        );
      await fontLoader.load();

      final builder = GoldenBuilder.grid(columns: 1, widthToHeightRatio: 1)
        ..addScenario(
          '',
          const FontsTestWidget(),
        );

      await tester.pumpWidgetBuilder(builder.build());
      await screenMatchesGolden(tester, 'app_typography_grid');
    });
  });
}
