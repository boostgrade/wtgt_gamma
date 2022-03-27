import 'package:routemaster/routemaster.dart';
import 'package:where_to_go_today/src/features/auth/code/code_route.dart';
import 'package:where_to_go_today/src/features/auth/register/register_route.dart';
import 'package:where_to_go_today/src/features/auth/sign_in/sign_in_route.dart';
import 'package:where_to_go_today/src/features/main/main_screen_route.dart';
import 'package:where_to_go_today/src/features/onboard/ui/onboarding_route.dart';
import 'package:where_to_go_today/src/features/main/main_route.dart';
import 'package:where_to_go_today/src/features/place_detail/place_detail_route.dart';
import 'package:where_to_go_today/src/features/settings/ui/settings_route.dart';

/// Класс, в котором описываем навигацию в приложении.
/// Навигация основана на пакете [routemaster](https://pub.dev/packages/routemaster)
///
/// Имена роутов храним в константах по аналогии с [SettingsRoute.routeName]
class AppRouter {
  static const initialRoute = '/';

  static final routes = RouteMap(
    routes: {
      initialRoute: (_) => MainRoute(),
      SignInRoute.routeName: (_) => SignInRoute(),
      OnboardingRoute.routeName: (_) => OnboardingRoute(),
      RegisterRoute.routeName: (_) => const RegisterRoute(),
      '${CodeRoute.routeName}/:phone': (routeData) =>
          CodeRoute(routeData.pathParameters['phone'] ?? ''),
      SettingsRoute.routeName: (_) => SettingsRoute(),
      '${MainRoute.routeName}/:initialScreen': (routeData) =>
          MainRoute(routeData.pathParameters['initialScreen']),
      '${PlaceDetailRoute.routeName}/:placeId': (routeData) =>
          PlaceDetailRoute(routeData.pathParameters['placeId'] ?? ''),
    },
  );
}
