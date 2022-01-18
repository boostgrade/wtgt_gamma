import 'package:where_to_go_today/src/features/app/ui/app_vm.dart';
import 'package:where_to_go_today/src/di/app_dependency.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/features/app/ui/app.dart';

void main() async {
  final globalDeps = AppDependencies();
  await globalDeps.init();

  runApp(
    Provider(
      create: (ctx) => globalDeps,
      child: App(
        vm: AppVm(
          globalDeps.settingsController,
          globalDeps.errorHandler,
        ),
      ),
    ),
  );
}
