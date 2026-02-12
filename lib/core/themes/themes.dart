import 'package:flutter/material.dart';
import 'package:mobile/core/themes/theme_colors.dart';

abstract class Themes {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: ThemeColors.white,
    colorSchemeSeed: ThemeColors.primary,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ThemeColors.black,
    colorSchemeSeed: ThemeColors.primary,
  );
}
