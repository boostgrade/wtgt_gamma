import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/di/app_dependency.dart';
import 'package:where_to_go_today/src/features/settings/ui/settings_view.dart';
import 'package:where_to_go_today/src/features/settings/ui/settings_vm.dart';

/// Маршрут для навигации к экрану настроек(сделан для примера)
class SettingsRoute extends MaterialPage<void> {
  static const routeName = '/settings';

  SettingsRoute()
      : super(
          child: Provider<SettingsVm>(
            create: (ctx) => SettingsVm(
              ctx.read<AppDependencies>().settingsController,
              ctx.read<AppDependencies>().errorHandler,
            ),
            child: Builder(
              builder: (context) {
                return SettingsView(
                  store: context.read<SettingsVm>(),
                );
              },
            ),
          ),
        );
}
