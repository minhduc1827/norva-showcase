import 'package:flutter/material.dart';

import 'norva_colors.dart';
import 'norva_radius.dart';
import 'norva_typography.dart';

abstract final class NorvaTheme {
  static ThemeData light() {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: NorvaColors.primary,
      brightness: Brightness.light,
      surface: NorvaColors.surface,
    ).copyWith(
      primary: NorvaColors.primary,
      onPrimary: NorvaColors.surface,
      surface: NorvaColors.surface,
      error: NorvaColors.caution,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: NorvaColors.background,
      fontFamily: NorvaTypography.fontFamily,
      textTheme: NorvaTypography.textTheme,

      appBarTheme: const AppBarTheme(
        backgroundColor: NorvaColors.background,
        foregroundColor: NorvaColors.ink,
        elevation: 0,
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: NorvaColors.surface,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(NorvaRadius.md),
          borderSide: const BorderSide(
            color: NorvaColors.outline,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(NorvaRadius.md),
          borderSide: const BorderSide(
            color: NorvaColors.outline,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(NorvaRadius.md),
          borderSide: const BorderSide(
            color: NorvaColors.primary,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}