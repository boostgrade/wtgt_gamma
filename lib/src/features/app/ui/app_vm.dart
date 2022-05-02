import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/features/auth/services/auth_bloc.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/states/auth_state.dart';
import 'package:where_to_go_today/src/features/settings/service/settings_bloc.dart';
import 'package:where_to_go_today/src/features/settings/service/state/settings_state.dart';

part 'app_vm.g.dart';

class AppVm = _AppVm with _$AppVm;

/// Данный класс также использует ChangeNotifier для работы с анимациями
abstract class _AppVm extends ViewModel with Store, ChangeNotifier {
  final SettingsBloc _bloc;
  final AuthBloc _authBloc;

  @observable
  ThemeMode? themeMode;

  @observable
  // todo(any): to be changed to false on finish sign-in implementation
  bool loggedIn = true;

  _AppVm(this._bloc, this._authBloc, ErrorHandler errorHandler)
      : super(errorHandler) {
    observeBloc<SettingsState, SettingsBloc>(
      _bloc,
      (event) {
        themeMode =
            event is SettingsWithDataState ? event.themeMode : ThemeMode.system;

        notifyListeners();
      },
    );
    observeBloc<AuthState, AuthBloc>(
      _authBloc,
      (event) {
        if (event is AuthStateSuccessViaOtp ||
            event is AuthStateSuccessViaSocial) {
          loggedIn = true;
        } else if (event is AuthStateLogout) {
          loggedIn = false;
        }

        notifyListeners();
      },
    );
  }
}
