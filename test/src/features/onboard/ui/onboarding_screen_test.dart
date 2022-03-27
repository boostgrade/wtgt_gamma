import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/scenario_error_handler/scenario_error_handler.dart';
import 'package:where_to_go_today/src/features/onboard/services/onboarding_bloc.dart';
import 'package:where_to_go_today/src/features/onboard/ui/onboarding_screen.dart';
import 'package:where_to_go_today/src/features/onboard/ui/onboarding_vm.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/res/theme/app_theme.dart';

class MockBuildContext extends Mock implements BuildContext {}

class MockScenarioErrorHandler extends Mock implements ScenarioErrorHandler {}

void main() {
  testGoldens(
    'Тест на вёрстку экрана Onboarding',
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
          child: OnboardingScreen(
            vm: OnboardingVm(
              MockBuildContext(),
              OnboardingBloc(),
              errorHandler: MockScenarioErrorHandler(),
            ),
          ),
        ),
        wrapper: materialAppWrapper(theme: AppTheme.lightTheme),
      );

      await multiScreenGolden(tester, 'onboarding_screen');
    },
  );
}
