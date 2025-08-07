import 'package:flutter/material.dart';
import 'theme_colors.dart';
import 'theme_typography.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        primary: ThemeColors.surfaceDefault,
        seedColor: ThemeColors.surfaceDefault,
      ),
      canvasColor: Colors.white,
      splashColor: ThemeColors.textIconDefault.withValues(alpha: 0.04),
      useMaterial3: true,
      fontFamily: 'Inter',
      textTheme: _textTheme,
      scaffoldBackgroundColor: Color(0XFFEDEDED),
    );
  }
}

final TextTheme _textTheme = TextTheme(
  headlineLarge: ThemeTypography.headlineLarge,
  headlineMedium: ThemeTypography.headlineMedium,
  headlineSmall: ThemeTypography.headlineSmall,
  titleLarge: ThemeTypography.titleLarge,
  titleMedium: ThemeTypography.titleMedium,
  titleSmall: ThemeTypography.titleSmall,
  bodyLarge: ThemeTypography.bodyLarge,
  bodyMedium: ThemeTypography.bodyMedium,
  bodySmall: ThemeTypography.bodySmall,
  labelLarge: ThemeTypography.labelLarge,
  labelMedium: ThemeTypography.labelMedium,
  labelSmall: ThemeTypography.labelSmall,
);
