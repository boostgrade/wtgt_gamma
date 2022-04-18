import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/di/app_dependencies.dart';
import 'package:where_to_go_today/src/features/main/places/ui/places_screen.dart';
import 'package:where_to_go_today/src/features/main/places/ui/places_vm.dart';

class PlacesScreenWidget extends StatelessWidget {
  const PlacesScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<PlacesVm>(
      create: (_) => PlacesVm(
        context.read<AppDependencies>().placesBloc,
        locationService: context.read<AppDependencies>().locationService,
        errorHandler: context.read<AppDependencies>().errorHandler,
      ),
      child: Builder(
        builder: (context) => PlacesScreen(
          vm: context.read<PlacesVm>(),
        ),
      ),
    );
  }
}
