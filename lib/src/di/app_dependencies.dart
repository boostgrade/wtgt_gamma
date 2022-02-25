import 'package:firebase_core/firebase_core.dart';
import 'package:where_to_go_today/src/core/services/network/dio/dio_module.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/scenario_error_handler/scenario_error_handler.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/scenario_error_handler/scenarios/snackbar_error_scenarios.dart';
import 'package:where_to_go_today/src/core/ui/messages/default_message_controller.dart';
import 'package:where_to_go_today/src/features/auth/services/auth_bloc.dart';
import 'package:where_to_go_today/src/features/auth/services/google/google_auth.dart';
import 'package:where_to_go_today/src/features/auth/services/storage/token_storage.dart';
import 'package:where_to_go_today/src/features/auth/services/vk/vk_auth.dart';
import 'package:where_to_go_today/src/features/authservices/api/auth_api.dart';
import 'package:where_to_go_today/src/features/authservices/repository/auth_repository.dart';
import 'package:where_to_go_today/src/features/settings/service/event/settings_event.dart';
import 'package:where_to_go_today/src/features/settings/service/repository/settings_repository.dart';
import 'package:where_to_go_today/src/features/settings/service/settings_bloc.dart';

import '../core/services/network/firebase_options.dart';
import '../features/authservices/api/auth_api.dart';
import '../features/authservices/repository/auth_repository.dart';
import 'base/dependency_bundle.dart';

/// Класс с глобальными зависимостями приложения
/// Здесь будем описывать то, что является синглтонами.
class AppDependencies extends DependencyBundle {
  final dio = DioModule().dio;
  final settingsController = SettingsBloc(SettingsRepository());
  final tokenStorage = TokenStorage();
  final googleAuth = GoogleAuth();
  final vkAuth = VKAuth();

  late final authRepository = AuthRepository(AuthApi(dio));
  late final authBloc = AuthBloc(
    authRepository: authRepository,
    googleAuth: googleAuth,
    vkAuth: vkAuth,
  );

  late final messageController = DefaultMessageController();
  late final errorHandler = ScenarioErrorHandler(
    SnackBarErrorScenarios(
      messageController,
    ),
  );

  Future<void> init() async {
    settingsController.add(LoadSettings());
    await tokenStorage.init();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await vkAuth.init();
  }
}
