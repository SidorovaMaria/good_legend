import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gorod_legend/theme/theme_colors.dart';
import 'package:gorod_legend/theme/theme_typography.dart';

enum BtnSize { small, medium }

enum BtnStyle { main, minor, outline, tertiary }

class AccentButton extends StatelessWidget {
  final BtnSize btnSize;
  final BtnStyle btnStyle;
  final bool disabled;
  final Widget title;
  final String? subtitle;
  final IconData? icon;
  final Function() onTap;

  const AccentButton({
    super.key,
    this.btnSize = BtnSize.small,
    this.btnStyle = BtnStyle.main,
    this.disabled = false,
    required this.title,
    required this.onTap,
    this.subtitle,
    this.icon,
  });

  Color _getBtnBackground() {
    switch (btnStyle) {
      case BtnStyle.main:
        return ThemeColors.surfaceAccentDefault;
      case BtnStyle.minor:
        return ThemeColors.surfaceAccentLow;
      default:
        return ThemeColors.transparent;
    }
  }

  Color _getBtnColor() {
    switch (btnStyle) {
      case BtnStyle.main:
        return ThemeColors.textIconInverse;
      default:
        return ThemeColors.textIconAccent;
    }
  }

  double _getButtonHeight() {
    switch (btnSize) {
      case BtnSize.small:
        return 28;
      default:
        return 44;
    }
  }

  TextStyle _getTextStyle() {
    switch (btnSize) {
      case BtnSize.small:
        return ThemeTypography.labelMedium;
      case BtnSize.medium:
        return ThemeTypography.labelLarge;
    }
  }

  Color _getDisabledBackground() {
    switch (btnStyle) {
      case BtnStyle.main:
      case BtnStyle.minor:
        return ThemeColors.surfaceNeutralLow;
      default:
        return ThemeColors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _getButtonHeight(),
      child: ElevatedButton.icon(
        onPressed: disabled ? null : onTap,
        label: title,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: btnSize == BtnSize.small ? 12 : 16,
            vertical: btnSize == BtnSize.small ? 6 : 12,
          ),
          textStyle: _getTextStyle(),
          backgroundColor: _getBtnBackground(),
          foregroundColor: _getBtnColor(),
          shadowColor: ThemeColors.transparent,
          disabledForegroundColor: ThemeColors.texticonDisabled,
          disabledBackgroundColor: _getDisabledBackground(),
          side: btnStyle == BtnStyle.outline
              ? BorderSide(
                  color: disabled
                      ? ThemeColors.borderMed
                      : ThemeColors.borderAccentMed,
                  width: 1,
                )
              : BorderSide.none,
        ),
      ),
    );
  }
}

class NeutralButton extends StatelessWidget {
  final BtnSize btnSize;
  final BtnStyle btnStyle;
  final bool disabled;
  final Widget title;
  final String? subtitle;
  final IconData? icon;
  final Function() onTap;

  const NeutralButton({
    super.key,
    this.btnSize = BtnSize.small,
    this.btnStyle = BtnStyle.main,
    this.disabled = false,
    required this.title,
    required this.onTap,
    this.subtitle,
    this.icon,
  });

  Color _getBtnBackground() {
    switch (btnStyle) {
      case BtnStyle.main:
        return ThemeColors.surfaceNeutralDefault;
      case BtnStyle.minor:
        return ThemeColors.surfaceNeutralLow;
      default:
        return ThemeColors.transparent;
    }
  }

  Color _getBtnColor() {
    switch (btnStyle) {
      case BtnStyle.main:
        return ThemeColors.textIconInverse;
      default:
        return ThemeColors.textIconDefault;
    }
  }

  double _getButtonHeight() {
    switch (btnSize) {
      case BtnSize.small:
        return 28;
      default:
        return 44;
    }
  }

  TextStyle _getTextStyle() {
    switch (btnSize) {
      case BtnSize.small:
        return ThemeTypography.labelMedium;
      case BtnSize.medium:
        return ThemeTypography.labelLarge;
    }
  }

  Color _getDisabledBackground() {
    switch (btnStyle) {
      case BtnStyle.main:
      case BtnStyle.minor:
        return ThemeColors.surfaceNeutralLow;
      default:
        return ThemeColors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _getButtonHeight(),
      child: ElevatedButton.icon(
        onPressed: disabled ? null : onTap,
        label: title,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: btnSize == BtnSize.small ? 12 : 16,
            vertical: btnSize == BtnSize.small ? 6 : 12,
          ),
          textStyle: _getTextStyle(),
          backgroundColor: _getBtnBackground(),
          foregroundColor: _getBtnColor(),
          shadowColor: ThemeColors.transparent,
          disabledForegroundColor: ThemeColors.texticonDisabled,
          disabledBackgroundColor: _getDisabledBackground(),
          side: btnStyle == BtnStyle.outline
              ? BorderSide(color: ThemeColors.borderMed, width: 1)
              : BorderSide.none,
        ),
      ),
    );
  }
}

class LightButton extends StatelessWidget {
  final BtnSize btnSize;
  final BtnStyle btnStyle;
  final bool disabled;
  final Widget title;
  final String? subtitle;
  final IconData? icon;
  final Function() onTap;

  const LightButton({
    super.key,
    this.btnSize = BtnSize.small,
    this.btnStyle = BtnStyle.main,
    this.disabled = false,
    required this.title,
    required this.onTap,
    this.subtitle,
    this.icon,
  });

  Color _getBtnBackground() {
    switch (btnStyle) {
      case BtnStyle.main:
        return ThemeColors.surfaceDefault;
      case BtnStyle.minor:
        return Color(0X240B0B0B);
      default:
        return ThemeColors.transparent;
    }
  }

  Color _getBtnColor() {
    switch (btnStyle) {
      case BtnStyle.main:
        return ThemeColors.textIconDefault;
      default:
        return ThemeColors.textIconInverse;
    }
  }

  double _getButtonHeight() {
    switch (btnSize) {
      case BtnSize.small:
        return 28;
      default:
        return 44;
    }
  }

  TextStyle _getTextStyle() {
    switch (btnSize) {
      case BtnSize.small:
        return ThemeTypography.labelMedium;
      case BtnSize.medium:
        return ThemeTypography.labelLarge;
    }
  }

  Color _getDisabledBackground() {
    switch (btnStyle) {
      case BtnStyle.main:
      case BtnStyle.minor:
        return ThemeColors.surfaceNeutralLow;
      default:
        return ThemeColors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _getButtonHeight(),
      child: ElevatedButton.icon(
        onPressed: disabled ? null : onTap,
        label: title,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: btnSize == BtnSize.small ? 12 : 16,
            vertical: btnSize == BtnSize.small ? 6 : 12,
          ),
          textStyle: _getTextStyle(),
          backgroundColor: _getBtnBackground(),
          foregroundColor: _getBtnColor(),
          shadowColor: ThemeColors.transparent,
          disabledForegroundColor: ThemeColors.texticonDisabled,
          disabledBackgroundColor: _getDisabledBackground(),
          side: btnStyle == BtnStyle.outline
              ? BorderSide(
                  color: disabled
                      ? ThemeColors.borderHigh
                      : ThemeColors.borderInverse,
                )
              : BorderSide.none,
        ),
      ),
    );
  }
}
