import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/scenario_error_handler/scenario_error_handler.dart';
import 'package:where_to_go_today/src/features/auth/code/code_screen.dart';
import 'package:where_to_go_today/src/features/auth/code/code_vm.dart';
import 'package:where_to_go_today/src/features/auth/services/auth_bloc.dart';
import 'package:where_to_go_today/src/features/authservices/repository/auth_repository.dart';
import 'package:where_to_go_today/src/res/theme/app_theme.dart';

class FakeBuildContext extends Mock implements BuildContext {}

class FakeAuthRepository extends Mock implements AuthRepository {}

class FakeScenarioErrorHandler extends Mock implements ScenarioErrorHandler {}

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
          child: CodeScreen(
            vm: CodeVm(
              FakeBuildContext(),
              AuthBloc(authRepository: FakeAuthRepository()),
              errorHandler: FakeScenarioErrorHandler(),
            ),
            phone: '',
          ),
        ),
        wrapper: materialAppWrapper(theme: AppTheme.lightTheme),
      );

      await multiScreenGolden(tester, 'code_screen');
    },
  );
}
