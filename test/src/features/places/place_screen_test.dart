import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:where_to_go_today/src/core/domain/place.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/scenario_error_handler/scenario_error_handler.dart';
import 'package:where_to_go_today/src/features/main/places/service/places_bloc.dart';
import 'package:where_to_go_today/src/features/main/places/service/repository/places_repository.dart';
import 'package:where_to_go_today/src/features/places/place_screen.dart';
import 'package:where_to_go_today/src/features/places/place_vm.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/res/theme/app_theme.dart';

class MockBuildContext extends Mock implements BuildContext {}

class MockPlacesRepository extends Mock implements PlacesRepository {}

class MockScenarioErrorHandler extends Mock implements ScenarioErrorHandler {}

const place = Place(
  id: 1,
  name: 'El Cafe Noir',
  description:
      'Phasellus odio ipsum, sollicitudin quis magna vitae, tempus pellentesque massa. Vestibulum ullamcorper sem ut placerat sollicitudin. Pellentesque at lacus ultricies, maximus elit aliquam, vestibulum enim. Pellentesque eleifend tellus id augue auctor, et venenatis ante ullamcorper. Maecenas vitae dictum magna. Proin efficitur cursus interdum. Ut lobortis mauris et orci posuere blandit. Pellentesque congue, libero ut imperdiet malesuada, orci erat rhoncus lorem, quis cursus est elit vel nunc. Aenean aliquam mauris quis convallis consequat. Proin bibendum, lorem non tempor pellentesque, lacus urna vehicula lorem, sit amet finibus lorem mi eu sem. Aenean tempor dolor felis, in ultrices leo tempor non. Sed in risus nec urna tincidunt imperdiet molestie ut quam. Ut ultricies, purus eu mollis posuere, sapien lacus molestie arcu, ut suscipit risus dui ac ex. Quisque augue dui, iaculis et lorem vitae, tristique tincidunt eros. Phasellus id arcu suscipit diam lacinia accumsan at a tortor.',
  imageUrl:
      'https://images.pexels.com/photos/1402407/pexels-photo-1402407.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
);

void main() {
  testGoldens(
    'Тест на вёрстку экрана PlaceScreen',
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
          child: PlaceScreen(
            placeId: 1,
            vm: PlaceVm(
              MockBuildContext(),
              PlacesBloc(MockPlacesRepository()),
              errorHandler: MockScenarioErrorHandler(),
            ),
          ),
        ),
        wrapper: materialAppWrapper(theme: AppTheme.lightTheme),
      );

      await multiScreenGolden(tester, 'place_detail_screen');
    },
  );
}
