import 'package:flutter/material.dart';

abstract class AppTypography {
  static const TextStyle subtitle1 = TextStyle(
    fontFamily: 'Montserrat500',
    fontSize: 16,
  );

  static const TextStyle headline2 = TextStyle(
    fontFamily: 'Montserrat600',
    fontSize: 24,
  );

  static const TextStyle body1 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 16,
    letterSpacing: 0.08,
  );

  static const TextStyle body2 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 18,
    letterSpacing: 0.08,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 16,
  );

  static const TextStyle label = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 12,
  );

  static const TextStyle promoBold = TextStyle(
    fontFamily: 'Montserrat700',
    fontSize: 16,
  );
}
