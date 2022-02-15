import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:where_to_go_today/src/features/auth/register/register_screen.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/res/theme/app_theme.dart';

void main() {
  testGoldens(
    'Register screen test',
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
          child: const RegisterScreen(),
        ),
        wrapper: materialAppWrapper(theme: AppTheme.lightTheme),
      );

      await multiScreenGolden(tester, 'register_screen');
    },
  );
}
