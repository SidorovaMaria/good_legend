import 'package:flutter/material.dart';
import 'package:gorod_legend/theme/theme_colors.dart';
import 'package:gorod_legend/theme/theme_typography.dart';

enum BtnSize { small, medium }

enum BtnStyle { main, minor, outline, tertiary }

enum BtnType { accent, neutral, light }

class AppButton extends StatelessWidget {
  final BtnSize size;
  final BtnStyle style;
  final BtnType type;
  final bool disabled;
  final Widget title;
  final String? subtitle;
  final IconData? icon;
  final Function() onTap;
  final IconAlignment iconAlignment;

  const AppButton({
    super.key,
    this.size = BtnSize.small,
    this.style = BtnStyle.main,
    required this.type,
    this.disabled = false,
    required this.title,
    required this.onTap,
    this.subtitle,
    this.iconAlignment = IconAlignment.end,
    this.icon,
  });

  // Shared button properties
  double get _height => size == BtnSize.small ? 28 : 44;
  EdgeInsets get _padding => EdgeInsets.symmetric(
    horizontal: size == BtnSize.small ? 12 : 16,
    vertical: 0,
  );
  TextStyle get _textStyle => size == BtnSize.small
      ? ThemeTypography.labelMedium
      : ThemeTypography.labelLarge;

  // Color resolution logic
  Color get _backgroundColor {
    if (disabled) return _disabledBackground;

    switch (type) {
      case BtnType.accent:
        return switch (style) {
          BtnStyle.main => ThemeColors.surfaceAccentDefault,
          BtnStyle.minor => ThemeColors.surfaceAccentLow,
          _ => ThemeColors.transparent,
        };
      case BtnType.neutral:
        return switch (style) {
          BtnStyle.main => ThemeColors.surfaceNeutralDefault,
          BtnStyle.minor => ThemeColors.surfaceNeutralLow,
          _ => ThemeColors.transparent,
        };
      case BtnType.light:
        return switch (style) {
          BtnStyle.main => ThemeColors.surfaceDefault,
          BtnStyle.minor => const Color(0X240B0B0B),
          _ => ThemeColors.transparent,
        };
    }
  }

  Color get _foregroundColor {
    if (disabled) return ThemeColors.texticonDisabled;

    return switch (type) {
      BtnType.accent =>
        style == BtnStyle.main
            ? ThemeColors.textIconInverse
            : ThemeColors.textIconAccent,
      BtnType.neutral =>
        style == BtnStyle.main
            ? ThemeColors.textIconInverse
            : ThemeColors.textIconDefault,
      BtnType.light =>
        style == BtnStyle.main
            ? ThemeColors.textIconDefault
            : ThemeColors.textIconInverse,
    };
  }

  Color get _borderColor {
    if (disabled) {
      return switch (type) {
        BtnType.light => ThemeColors.borderHigh,
        _ => ThemeColors.borderMed,
      };
    }
    return switch (type) {
      BtnType.accent => ThemeColors.borderAccentMed,
      BtnType.neutral => ThemeColors.borderMed,
      BtnType.light => ThemeColors.borderInverse,
    };
  }

  Color get _disabledBackground => switch (style) {
    BtnStyle.main || BtnStyle.minor => ThemeColors.surfaceNeutralLow,
    _ => ThemeColors.transparent,
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      child: ElevatedButton.icon(
        onPressed: disabled ? null : onTap,
        iconAlignment: iconAlignment,
        icon: icon != null ? Icon(icon) : null,
        label: title,
        style: ElevatedButton.styleFrom(
          padding: _padding,
          textStyle: _textStyle,
          backgroundColor: _backgroundColor,
          foregroundColor: _foregroundColor,
          shadowColor: ThemeColors.transparent,
          disabledForegroundColor: ThemeColors.texticonDisabled,
          disabledBackgroundColor: _disabledBackground,
          side: style == BtnStyle.outline
              ? BorderSide(color: _borderColor, width: 1)
              : BorderSide.none,
        ),
      ),
    );
  }
}
