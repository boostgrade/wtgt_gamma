import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/di/app_dependencies.dart';
import 'package:where_to_go_today/src/features/app/ui/app_vm.dart';

import 'src/features/app/ui/app.dart';

Future<void> main() async {
  final globalDeps = AppDependencies();
  await globalDeps.init();

  runApp(
    Provider(
      create: (ctx) => globalDeps,
      child: App(
        vm: AppVm(
          globalDeps.settingsController,
          globalDeps.authBloc,
          globalDeps.errorHandler,
        ),
      ),
    ),
  );
}
