// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:golden_toolkit/golden_toolkit.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:where_to_go_today/src/core/domain/place.dart';
// import 'package:where_to_go_today/src/core/ui/errors_handling/scenario_error_handler/scenario_error_handler.dart';
// import 'package:where_to_go_today/src/features/main/places/service/places_bloc.dart';
// import 'package:where_to_go_today/src/features/main/places/service/repository/places_repository.dart';
// import 'package:where_to_go_today/src/features/places/place_screen.dart';
// import 'package:where_to_go_today/src/features/places/place_vm.dart';
// import 'package:where_to_go_today/src/localization/l10n.dart';
// import 'package:where_to_go_today/src/res/theme/app_theme.dart';

// class MockBuildContext extends Mock implements BuildContext {}

// class MockPlacesRepository extends Mock implements PlacesRepository {}

// class MockScenarioErrorHandler extends Mock implements ScenarioErrorHandler {}

// void main() {
//   testGoldens(
//     'Тест на вёрстку экрана PlaceScreen',
//     (tester) async {
//       await tester.pumpWidgetBuilder(
//         Localizations(
//           delegates: const [
//             AppLocalizations.delegate,
//             GlobalMaterialLocalizations.delegate,
//             GlobalWidgetsLocalizations.delegate,
//             GlobalCupertinoLocalizations.delegate,
//           ],
//           locale: const Locale('ru'),
//           child: PlaceScreen(
//             placeId: 1,
//             vm: PlaceVm(
//               MockBuildContext(),
//               PlacesBloc(MockPlacesRepository()),
//               errorHandler: MockScenarioErrorHandler(),
//             ),
//           ),
//         ),
//         wrapper: materialAppWrapper(theme: AppTheme.lightTheme),
//       );

//       await multiScreenGolden(tester, 'place_detail_screen');
//     },
//   );
// }
