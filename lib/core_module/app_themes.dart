import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

import '../core_module.dart';

class AppTheme {
  final ColorScheme? _colorScheme;

  AppTheme(this._colorScheme);

//  get colorScheme => _colorScheme;

  AppBarTheme appBarTheme(ColorScheme colors) {
    return AppBarTheme(
      elevation: 0,
      backgroundColor: colors.surface,
      foregroundColor: colors.onBackground,
    );
  }

  FloatingActionButtonThemeData floatingActionButtonTheme(
      ColorScheme colorScheme) {
    return FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primaryContainer,
        foregroundColor: colorScheme.onPrimaryContainer);
  }

  ColorScheme colors(Brightness brightness, Color? targetColor) {
    final dynamicPrimary = _colorScheme?.primary;
    return ColorScheme.fromSeed(
      seedColor: dynamicPrimary ?? blend(targetColor!),
      brightness: brightness,
    );
  }

  Color blend(Color targetColor) {
    return Color(Blend.harmonize(targetColor.value, targetColor.value));
  }
  ThemeData darkTheme({required Color targetColor}) {
    final colorScheme = colors(Brightness.dark, targetColor);
    return ThemeData(
      useMaterial3: true,
      appBarTheme: appBarTheme(colorScheme),
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(color: AppColors.textGrey),
        labelStyle: TextStyle(color: AppColors.white),
      ),
      colorScheme: colorScheme,
    );
  }

  ThemeData lightTheme({required Color targetColor}) {
    final colorScheme = colors(Brightness.light, targetColor);

    return ThemeData(
      useMaterial3: true,
      appBarTheme: appBarTheme(colorScheme),
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(color: AppColors.textGrey),
        labelStyle: TextStyle(color: AppColors.white),
      ),
      colorScheme: colorScheme,
    );
  }
}
