import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/features/settings/service/event/settings_event.dart';
import 'package:where_to_go_today/src/features/settings/service/settings_bloc.dart';
import 'package:where_to_go_today/src/features/settings/service/state/settings_state.dart';

part 'settings_vm.g.dart';

/// Пример вьюмодели на основе MobX
class SettingsVm = _SettingsVm with _$SettingsVm;

abstract class _SettingsVm extends ViewModel with Store {
  final SettingsBloc _bloc;

  @observable
  ThemeMode themeMode = ThemeMode.system;

  _SettingsVm(
    this._bloc,
    ErrorHandler errorHandler,
  ) : super(errorHandler) {
    observeBloc<SettingsState, SettingsBloc>(_bloc, _handleStates);
  }

  @action
  void updateTheme(ThemeMode? mode) {
    _bloc.add(UpdateTheme(mode));
  }

  void _handleStates(SettingsState state) {
    if (state is LoadingSettingsState) {
      themeMode = ThemeMode.system;
    } else if (state is SettingsWithDataState) {
      themeMode = state.themeMode;
      debugPrint('Hello ${themeMode.toString()}');
    }
  }
}
