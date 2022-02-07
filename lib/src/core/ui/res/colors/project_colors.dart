import 'package:flutter/material.dart';

abstract class ProjectColors {
  static const ColorScheme lightColorScheme = ColorScheme(
    background: ProjectColors.backgroundColor,
    brightness: Brightness.light,
    error: ProjectColors.errorColor,
    onBackground: ProjectColors.onBackgroundColor,
    onError: ProjectColors.onErrorColor,
    onPrimary: ProjectColors.onPrimaryColor,
    onSecondary: ProjectColors.onSecondaryColor,
    onSurface: ProjectColors.onSurfaceColor,
    primary: ProjectColors.primaryColor,
    primaryContainer: ProjectColors.primaryColor,
    secondary: ProjectColors.secondaryColor,
    secondaryContainer: ProjectColors.secondaryColor,
    surface: ProjectColors.surfaceColor,
  );

  static const Color backgroundColor = _white;
  static const Color surfaceColor = _white;
  static const Color shadowColor = _darkGrey;
  static const Color errorColor = _red;
  static const Color primaryColor = _yellow;
  static const Color secondaryColor = _blue;
  static const Color textColorPrimary = _black;
  // OnError - текст на цвете ошибки, в схеме его нет - поставил белый
  static const Color onErrorColor = _white;
  static const Color onPrimaryColor = _black;
  static const Color onSecondaryColor = _white;
  static const Color onSurfaceColor = _black;
  static const Color onBackgroundColor = _black;

  static const Color cardColor = _salad;
  static const Color accentColor = _lightSalad;
  static const Color borderColor = _lightSalad;
  static const Color progressStatusColor = _orange;

  static const Color _black = Color(0xFF000000);
  static const Color _blue = Color(0xFF184E9E);
  static const Color _darkGrey = Color(0xCC000000);
  static const Color _lightSalad = Color(0xFFB8F09D);
  static const Color _orange = Color(0xFFED863A);
  static const Color _red = Color(0xFFB00020);
  static const Color _salad = Color(0xFFA9D899);
  static const Color _white = Color(0xFFFFFFFF);
  static const Color _yellow = Color(0xFFEBCE0C);
}
