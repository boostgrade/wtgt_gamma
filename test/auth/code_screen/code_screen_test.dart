import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:where_to_go_today/src/features/auth/code/code_screen.dart';
import 'package:where_to_go_today/src/res/theme/app_theme.dart';

void main() {
  testGoldens(
    'Code screen test',
    (tester) async {
      await tester.pumpWidgetBuilder(
        Localizations(
          delegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: const Locale('ru'),
          child: const CodeScreen(),
        ),
        wrapper: materialAppWrapper(theme: AppTheme.lightTheme),
      );

      await multiScreenGolden(tester, 'code_screen');
    },
  );
}
