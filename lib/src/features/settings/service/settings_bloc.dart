import 'package:bloc/bloc.dart';
import 'package:where_to_go_today/src/features/settings/service/state/state.dart';
import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/core/services/base/throw_exception_bloc.dart';

import 'event/event.dart';
import 'repository/settings_repository.dart';

/// A class that many Widgets can interact with to read user settings, update
/// user settings, or listen to user settings changes.
///
/// Controllers glue Data Services to Flutter Widgets. The SettingsController
/// uses the SettingsService to store and retrieve user settings.
class SettingsBloc extends Bloc<SettingsEvent, SettingsState>
    with CanThrowExceptionBlocMixin {
  // Make SettingsService a private variable so it is not used directly.
  final SettingsRepository _settingsService;

  // Make ThemeMode a private variable so it is not updated directly without
  // also persisting the changes with the SettingsService.
  late ThemeMode _themeMode;

  SettingsBloc(this._settingsService) : super(LoadingSettingsState()) {
    on<UpdateTheme>((event, emit) async {
      await updateThemeMode(event.themeMode);

      emit(SettingsWithDataState(_themeMode));
    });

    on<LoadSettings>((event, emit) async {
      await _loadSettings();

      emit(LoadingSettingsState());
    });
  }

  /// Update and persist the ThemeMode based on the user's selection.
  Future<void> updateThemeMode(ThemeMode? newThemeMode) async {
    if (newThemeMode == null) return;

    // Dot not perform any work if new and old ThemeMode are identical
    if (newThemeMode == _themeMode) return;

    // Otherwise, store the new theme mode in memory
    _themeMode = newThemeMode;

    // Persist the changes to a local database or the internet using the
    // SettingService.
    await _settingsService.updateThemeMode(newThemeMode);
  }

  /// Load the user's settings from the SettingsService. It may load from a
  /// local database or the internet. The controller only knows it can load the
  /// settings from the service.
  Future<void> _loadSettings() async {
    _themeMode = await _settingsService.themeMode();
  }
}
