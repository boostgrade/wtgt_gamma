import 'package:flutter/material.dart';

const montserratFont = 'Montserrat';

abstract class AppTypography {
  //* Сортировка шрифтов по fontSize
  static TextStyle headline2 = TextStyle(
    fontFamily: montserratFont,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: calculateLineHeight(20, 24),
  );

  static TextStyle body2 = TextStyle(
    fontFamily: montserratFont,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: calculateLineHeight(20, 18),
    letterSpacing: convertEMtoPX(0.005, 18),
  );

  static TextStyle promoBold = TextStyle(
    fontFamily: montserratFont,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: calculateLineHeight(20, 16),
  );

  static TextStyle subtitle1 = TextStyle(
    fontFamily: montserratFont,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: calculateLineHeight(20, 16),
  );

  static TextStyle body1 = TextStyle(
    fontFamily: montserratFont,
    fontSize: 16,
    height: calculateLineHeight(20, 16),
    letterSpacing: convertEMtoPX(0.005, 16),
  );

  static TextStyle caption = TextStyle(
    fontFamily: montserratFont,
    fontSize: 16,
    height: calculateLineHeight(20, 16),
  );

  static TextStyle label = TextStyle(
    fontFamily: montserratFont,
    fontSize: 12,
    height: calculateLineHeight(20, 12),
  );

  static double calculateLineHeight(int lineHeight, int fontSize) {
    return lineHeight / fontSize;
  }

  static double convertEMtoPX(double letterSpacing, int fontSize) {
    return fontSize * letterSpacing;
  }
}
