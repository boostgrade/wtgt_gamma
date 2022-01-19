import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class SettingsState extends Equatable {}

class LoadingSettingsState extends SettingsState {
  @override
  List<Object?> get props => [];
}

class SettingsWithDataState extends SettingsState {
  final ThemeMode themeMode;

  @override
  List<Object?> get props => [themeMode];

  SettingsWithDataState(this.themeMode);
}
