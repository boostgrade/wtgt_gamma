import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/di/app_dependencies.dart';
import 'package:where_to_go_today/src/features/main/main_screen.dart';
import 'package:where_to_go_today/src/features/main/main_vm.dart';
import 'package:where_to_go_today/src/features/main/my_card/my_card_screen.dart';
import 'package:where_to_go_today/src/features/main/my_card/my_card_vm.dart';
import 'package:where_to_go_today/src/features/main/places/ui/places_screen.dart';
import 'package:where_to_go_today/src/features/main/places/ui/places_vm.dart';
import 'package:where_to_go_today/src/features/main/profile/profile_screen.dart';
import 'package:where_to_go_today/src/features/main/profile/profile_vm.dart';

@immutable
class MainRoute extends MaterialPage<void> {
  static const routeName = '/main';

  MainRoute([String? initialScreen])
      : super(
          child: Provider<MainVm>(
            create: (context) => MainVm(
              errorHandler: context.read<AppDependencies>().errorHandler,
            ),
            child: Builder(
              builder: (context) => MainScreen(
                vm: context.read<MainVm>(),
                initialScreen: initialScreen,
                screens: [
                  Provider<PlacesVm>(
                    create: (_) => PlacesVm(
                      context,
                      context.read<AppDependencies>().placesBloc,
                      errorHandler:
                          context.read<AppDependencies>().errorHandler,
                    ),
                    child: Builder(
                      builder: (context) => PlacesScreen(
                        vm: context.read<PlacesVm>(),
                      ),
                    ),
                  ),
                  Provider<MyCardVm>(
                    create: (_) => MyCardVm(),
                    child: Builder(
                      builder: (context) => MyCardScreen(
                        vm: context.read<MyCardVm>(),
                      ),
                    ),
                  ),
                  Provider<ProfileVm>(
                    create: (_) => ProfileVm(
                      errorHandler:
                          context.read<AppDependencies>().errorHandler,
                    ),
                    child: Builder(
                      builder: (context) => ProfileScreen(
                        vm: context.read<ProfileVm>(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
}
