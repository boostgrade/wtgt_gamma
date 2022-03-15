import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mockito/mockito.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/scenario_error_handler/scenario_error_handler.dart';
import 'package:where_to_go_today/src/features/auth/register/register_screen.dart';
import 'package:where_to_go_today/src/features/auth/register/register_screen_vm.dart';
import 'package:where_to_go_today/src/features/auth/services/auth_bloc.dart';
import 'package:where_to_go_today/src/features/auth/services/google/google_auth.dart';
import 'package:where_to_go_today/src/features/auth/services/vk/vk_auth.dart';
import 'package:where_to_go_today/src/features/authservices/repository/auth_repository.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/res/theme/app_theme.dart';

class MockBuildContext extends Mock implements BuildContext {}

class MockAuthRepository extends Mock implements AuthRepository {}

class MockGoogleAuth extends Mock implements GoogleAuth {}

class MockVKAuth extends Mock implements VKAuth {}

class MockScenarioErrorHandler extends Mock implements ScenarioErrorHandler {}

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
          child: Builder(
            builder: (context) {
              return RegisterScreen(
                vm: RegisterScreenVm(
                  AuthBloc(
                    authRepository: MockAuthRepository(),
                    googleAuth: MockGoogleAuth(),
                    vkAuth: MockVKAuth(),
                  ),
                  errorHandler: MockScenarioErrorHandler(),
                  context: MockBuildContext(),
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
