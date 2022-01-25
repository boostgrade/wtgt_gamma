import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/core/ui/res/colors/project_colors.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/app_typography.dart';

class AppTheme {
  static const _appBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );

  static const _bottomNavigationBarTheme = BottomNavigationBarThemeData(
    selectedItemColor: ProjectColors.secondaryColor,
    unselectedItemColor: ProjectColors.onBackgroundColor,
    selectedLabelStyle: AppTypography.s12w400h20(),
    unselectedLabelStyle: AppTypography.s12w400h20(),
  );

  static const _cardTheme = CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
  );

  static const _inputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(6.0),
      ),
      borderSide: BorderSide(
        color: ProjectColors.secondaryColor,
      ),
    ),
    contentPadding: EdgeInsets.all(16.0),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: ProjectColors.secondaryColor,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: ProjectColors.secondaryColor,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(6.0),
      ),
    ),
    labelStyle: AppTypography.s16w400h20(),
  );

  static const _progressIndicatorTheme = ProgressIndicatorThemeData(
    color: ProjectColors.secondaryColor,
  );

  static const _textSelectionTheme = TextSelectionThemeData(
    cursorColor: ProjectColors.secondaryColor,
  );

  static final _checkboxTheme = CheckboxThemeData(
    checkColor: MaterialStateProperty.all(
      ProjectColors.onSecondaryColor,
    ),
    fillColor: MaterialStateProperty.all(
      ProjectColors.secondaryColor,
    ),
  );

  static final _textButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        ProjectColors.primaryColor,
      ),
      fixedSize: MaterialStateProperty.all(
        const Size(double.infinity, 46),
      ),
      foregroundColor: MaterialStateProperty.resolveWith(
        (states) => states.contains(MaterialState.disabled)
            ? ProjectColors.onPrimaryColor.withAlpha(130)
            : ProjectColors.onPrimaryColor,
      ),
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 16),
      ),
      shape: MaterialStateProperty.all(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
          side: BorderSide(color: ProjectColors.secondaryColor),
        ),
      ),
    ),
  );

  static final _switchTheme = SwitchThemeData(
    thumbColor: MaterialStateProperty.all(
      ProjectColors.primaryColor,
    ),
    trackColor: MaterialStateProperty.all(
      ProjectColors.onBackgroundColor,
    ),
  );

  static ThemeData get lightTheme {
    return ThemeData(
      appBarTheme: _appBarTheme,
      bottomNavigationBarTheme: _bottomNavigationBarTheme,
      cardTheme: _cardTheme,
      colorScheme: ProjectColors.lightColorScheme,
      checkboxTheme: _checkboxTheme,
      inputDecorationTheme: _inputDecorationTheme,
      progressIndicatorTheme: _progressIndicatorTheme,
      switchTheme: _switchTheme,
      textButtonTheme: _textButtonTheme,
      textSelectionTheme: _textSelectionTheme,
      textTheme: const TextTheme(
        headline2: AppTypography.s24w600h20(),
        bodyText2: AppTypography.s18w500h20ls(),
        bodyText1: AppTypography.s16w500h20ls(),
        subtitle1: AppTypography.s16w500h20(),
        caption: AppTypography.s16w400h20(),
        button: AppTypography.s16w500h20(),
      ),
    );
  }
}
