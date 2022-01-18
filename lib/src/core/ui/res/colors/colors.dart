import 'dart:ui';

import 'package:flutter/material.dart';

abstract class ProjectColors {
  static const Color whiteColor = _white;
  static const Color divider = _grey;
  static const Color shadow = _grey;
  static const Color disabledColor = _darkGrey;
  static const Color colorError = _freeSpeechRed;
  static const Color primaryColor = _brightBlue;
  static const Color activeColor = _green;
  static const Color textFieldColor = _brightGrey;
  static const Color secondaryColor = _dustyBlue;
  static const Color textColorPrimary = _black;

//TODO: Основная палитра

  static const Color _white = Color(0xFFFFFFFF);
  static const Color _grey = Color(0xFFDFDFDF);
  static const Color _freeSpeechRed = Color(0xFFE63946);
  static const Color _darkGrey = Color(0xFF818C99);
  static const Color _brightBlue = Color(0xFF457B9D);
  static const Color _green = Color(0xFF90BE6D);
  static const Color _brightGrey = Color(0xFFEBEDF0);
  static const Color _dustyBlue = Color(0xFFA8DADC);
  static const Color _black = Color(0xFF242424);
}

