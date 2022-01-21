import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/core/ui/res/colors/project_colors.dart';

const _defaultFontFamily = 'Montserrat';
const _defaultFontStyle = FontStyle.normal;
const _defaultFontWeight = FontWeight.w400;
const _defaultLetterSpacing = 0.08;
const _defaultColor = ProjectColors.textColorPrimary;

class AppTypography extends TextStyle {
  const AppTypography({
    required double height,
    required double fontSize,
    FontStyle fontStyle = _defaultFontStyle,
    Color color = _defaultColor,
    FontWeight fontWeight = _defaultFontWeight,
    String fontFamily = _defaultFontFamily,
    double letterSpacing = _defaultLetterSpacing,
  }) : super(
          letterSpacing: letterSpacing,
          fontFamily: fontFamily,
          height: height,
          fontSize: fontSize,
          fontStyle: fontStyle,
          color: color,
          fontWeight: fontWeight,
        );

  const AppTypography.headline2({
    Color color = _defaultColor,
  }) : this(
          height: 20 / 24,
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: color,
        );

  const AppTypography.body2({
    Color color = _defaultColor,
  }) : this(
          height: 20 / 18,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: color,
          letterSpacing: 0.005 * 18,
        );

  const AppTypography.promoBold({
    Color color = _defaultColor,
  }) : this(
          height: 20 / 16,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: color,
        );

  const AppTypography.subtitle1({
    Color color = _defaultColor,
  }) : this(
          height: 20 / 16,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: color,
        );

  const AppTypography.body1({
    Color color = _defaultColor,
  }) : this(
          height: 20 / 16,
          fontSize: 16,
          letterSpacing: 0.005 * 16,
          fontWeight: FontWeight.w500,
          color: color,
        );

  const AppTypography.caption({
    Color color = _defaultColor,
  }) : this(
          height: 20 / 16,
          fontSize: 16,
          color: color,
        );

  const AppTypography.label({
    Color color = _defaultColor,
  }) : this(
          height: 20 / 12,
          fontSize: 12,
          color: color,
        );
}
