import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/di/app_dependencies.dart';
import 'package:where_to_go_today/src/features/places/place_screen.dart';
import 'package:where_to_go_today/src/features/places/place_vm.dart';

@immutable
class PlaceRoute extends MaterialPage<void> {
  static const routeName = '/place_detail';

  PlaceRoute(String id)
      : super(
          child: Builder(
            builder: (context) => Provider<PlaceVm>(
              create: (_) => PlaceVm(
                context,
                context.read<AppDependencies>().placesBloc,
                errorHandler: context.read<AppDependencies>().errorHandler,
              ),
              child: Builder(
                builder: (context) => PlaceScreen(
                  vm: context.read<PlaceVm>(),
                  placeId: int.parse(id),
                ),
              ),
            ),
          ),
        );
}
