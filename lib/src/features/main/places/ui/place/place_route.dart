import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/di/app_dependencies.dart';
import 'package:where_to_go_today/src/features/main/places/ui/place/place_screen.dart';
import 'package:where_to_go_today/src/features/main/places/ui/place/place_vm.dart';

@immutable
class PlaceRoute extends MaterialPage<void> {
  static const routeName = '/place-detail-info';

  PlaceRoute(String placeId)
      : super(
          child: Provider<PlaceVm>(
            create: (context) => PlaceVm(
              context.read<AppDependencies>().placesBloc,
              placeId: int.parse(placeId),
              errorHandler: context.read<AppDependencies>().errorHandler,
            ),
            child: Builder(
              builder: (context) => PlaceScreen(
                placeId: int.parse(placeId),
                vm: context.read<PlaceVm>(),
              ),
            ),
          ),
        );
}
