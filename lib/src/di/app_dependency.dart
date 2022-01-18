import 'package:where_to_go_today/src/core/services/network/dio/dio_module.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/scenario_error_handler/scenario_error_handler.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/scenario_error_handler/scenarios/snackbar_error_scenarios.dart';
import 'package:where_to_go_today/src/core/ui/messages/default_message_controller.dart';
import 'package:where_to_go_today/src/features/settings/service/event/event.dart';
import 'package:where_to_go_today/src/features/settings/service/repository/settings_repository.dart';
import 'package:where_to_go_today/src/features/settings/service/settings_bloc.dart';

import 'base/dependency_bundle.dart';

/// Класс с глобальными зависимостями приложения
/// Здесь бужем описывать то, что является синглтонами.
class AppDependencies extends DependencyBundle {
  final dio = DioModule().dio;
  final settingsController = SettingsBloc(SettingsRepository());

  late final messageController = DefaultMessageController();
  late final errorHandler = ScenarioErrorHandler(
    SnackBarErrorScenarios(
      messageController,
    ),
  );

  Future<void> init() async {
    settingsController.add(LoadSettings());
  }
}
