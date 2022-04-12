import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/di/app_dependencies.dart';
import 'package:where_to_go_today/src/features/main/main_screen.dart';
import 'package:where_to_go_today/src/features/main/main_vm.dart';
import 'package:where_to_go_today/src/features/main/my_card/my_card_screen_widget.dart';
import 'package:where_to_go_today/src/features/main/places/ui/places_screen_widget.dart';
import 'package:where_to_go_today/src/features/main/profile/ui/profile_screen_widget.dart';

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
                screens: const [
                  PlacesScreenWidget(),
                  MyCardScreenWidget(),
                  ProfileScreenWidget(),
                ],
              ),
            ),
          ),
        );
}
