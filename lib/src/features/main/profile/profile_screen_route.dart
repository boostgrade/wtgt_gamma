import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/di/app_dependencies.dart';

import 'profile_screen.dart';
import 'profile_vm.dart';

/// Роут экрана [MainScreen]
@immutable
class ProfileScreenRoute extends MaterialPage<void> {
  static const routeName = '/profile-screen';

  ProfileScreenRoute()
      : super(
          child: Provider<ProfileVm>(
            create: (context) => ProfileVm(
              errorHandler: context.read<AppDependencies>().errorHandler,
            ),
            child: Builder(
              builder: (context) => ProfileScreen(
                vm: context.read<ProfileVm>(),
              ),
            ),
          ),
        );
}
