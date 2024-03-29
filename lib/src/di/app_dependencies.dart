import 'package:firebase_core/firebase_core.dart';
import 'package:where_to_go_today/src/core/services/network/dio/dio_module.dart';
import 'package:where_to_go_today/src/core/services/network/firebase_options.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/scenario_error_handler/scenario_error_handler.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/scenario_error_handler/scenarios/snackbar_error_scenarios.dart';
import 'package:where_to_go_today/src/core/ui/messages/default_message_controller.dart';
import 'package:where_to_go_today/src/di/base/dependency_bundle.dart';
import 'package:where_to_go_today/src/features/auth/services/auth_bloc.dart';
import 'package:where_to_go_today/src/features/auth/services/facebook/facebook_auth_service.dart';
import 'package:where_to_go_today/src/features/auth/services/google/google_auth.dart';
import 'package:where_to_go_today/src/features/auth/services/storage/token_storage.dart';
import 'package:where_to_go_today/src/features/auth/services/vk/vk_auth.dart';
import 'package:where_to_go_today/src/features/authservices/api/auth_api.dart';
import 'package:where_to_go_today/src/features/authservices/repository/auth_repository.dart';
import 'package:where_to_go_today/src/features/location/location_service.dart';
import 'package:where_to_go_today/src/features/main/places/service/places_bloc.dart';
import 'package:where_to_go_today/src/features/main/places/service/repository/places_repository.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/profile_api.dart';
import 'package:where_to_go_today/src/features/main/profile/services/profile_bloc.dart';
import 'package:where_to_go_today/src/features/main/profile/services/repository/profile_repository.dart';
import 'package:where_to_go_today/src/features/onboard/services/onboarding_bloc.dart';
import 'package:where_to_go_today/src/features/onboard/services/repository/onboard_repository.dart';
import 'package:where_to_go_today/src/features/onboard/services/storage/onboard_storage.dart';
import 'package:where_to_go_today/src/features/settings/service/event/settings_event.dart';
import 'package:where_to_go_today/src/features/settings/service/repository/settings_repository.dart';
import 'package:where_to_go_today/src/features/settings/service/settings_bloc.dart';

/// Класс с глобальными зависимостями приложения
/// Здесь будем описывать то, что является синглтонами.
class AppDependencies extends DependencyBundle {
  final dio = DioModule().dio;
  final settingsController = SettingsBloc(SettingsRepository());
  final tokenStorage = TokenStorage();
  final onboardStorage = OnboardStorage();
  final facebookAuthService = FacebookAuthService();

  final googleAuth = GoogleAuth();
  late final vkAuth = VKAuth();

  late final onboardRepository = OnboardRepository(onboardStorage);
  late final authRepository = AuthRepository(AuthApi(dio));
  late final onboardingBloc = OnboardingBloc(onboardRepository);
  late final authBloc = AuthBloc(
    authRepository: authRepository,
    googleAuth: googleAuth,
    vkAuth: vkAuth,
    facebookAuthService: facebookAuthService,
  );

  late final placesRepository = PlacesRepository();
  late final placesBloc = PlacesBloc(
    placesRepository,
  );

  late final profileApi = ProfileApi(dio);
  late final profileRepository = ProfileRepository(profileApi);
  late final profileBloc =
      ProfileBloc(profileRepository, authRepository, tokenStorage);

  late final messageController = DefaultMessageController();
  late final errorHandler = ScenarioErrorHandler(
    SnackBarErrorScenarios(
      messageController,
    ),
  );

  late final locationService = LocationService();

  Future<void> init() async {
    settingsController.add(LoadSettings());

    await tokenStorage.init();
    await onboardStorage.init();

    if (Firebase.apps.isNotEmpty) {
      await Firebase.initializeApp(
        name: 'wtgt-gamma',
        options: DefaultFirebaseOptions.currentPlatform,
      );
    }
  }
}
