import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:where_to_go_today/src/di/app_dependencies.dart';
import 'package:where_to_go_today/src/features/auth/register/register_screen.dart';
import 'package:where_to_go_today/src/features/auth/register/register_screen_vm.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/res/theme/app_theme.dart';

void main() {
  final appDependencies = AppDependencies();

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
          child: Builder(
            builder: (context) {
              return RegisterScreen(
                vm: RegisterScreenVm(
                  appDependencies.authBloc,
                  errorHandler: appDependencies.errorHandler,
                  context: context,
                ),
              );
            },
          ),
        ),
        wrapper: materialAppWrapper(theme: AppTheme.lightTheme),
      );

      await multiScreenGolden(tester, 'register_screen');
    },
  );
}
