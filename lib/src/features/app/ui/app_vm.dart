import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/features/settings/service/settings_bloc.dart';
import 'package:where_to_go_today/src/features/settings/service/state/state.dart';

part 'app_vm.g.dart';

class AppVm = _AppVm with _$AppVm;

/// Данный класс также использует ChangeNotifier для работы с анимациями
abstract class _AppVm extends ViewModel with Store, ChangeNotifier {
  final SettingsBloc _bloc;

  @observable
  ThemeMode? themeMode;

  _AppVm(this._bloc, ErrorHandler errorHandler) : super(errorHandler) {
    observeBloc<SettingsState, SettingsBloc>(
      _bloc,
      (event) {
        themeMode =
            event is SettingsWithDataState ? event.themeMode : ThemeMode.system;

        notifyListeners();
      },
    );
  }
}
