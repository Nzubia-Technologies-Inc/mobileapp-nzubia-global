import 'package:flutter/material.dart';

@immutable
class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  final Color success;
  final Color warning;
  final Color info;
  final Color deepSlate;
  final Color surfaceSlate;
  final Color neonCyan;
  final Color neonPurple;
  final Color neonLime;
  final Gradient glassGradient;
  final Gradient primaryGradient;

  const AppColorsExtension({
    required this.success,
    required this.warning,
    required this.info,
    required this.deepSlate,
    required this.surfaceSlate,
    required this.neonCyan,
    required this.neonPurple,
    required this.neonLime,
    required this.glassGradient,
    required this.primaryGradient,
  });

  @override
  AppColorsExtension copyWith({
    Color? success,
    Color? warning,
    Color? info,
    Color? deepSlate,
    Color? surfaceSlate,
    Color? neonCyan,
    Color? neonPurple,
    Color? neonLime,
    Gradient? glassGradient,
    Gradient? primaryGradient,
  }) {
    return AppColorsExtension(
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      deepSlate: deepSlate ?? this.deepSlate,
      surfaceSlate: surfaceSlate ?? this.surfaceSlate,
      neonCyan: neonCyan ?? this.neonCyan,
      neonPurple: neonPurple ?? this.neonPurple,
      neonLime: neonLime ?? this.neonLime,
      glassGradient: glassGradient ?? this.glassGradient,
      primaryGradient: primaryGradient ?? this.primaryGradient,
    );
  }

  @override
  AppColorsExtension lerp(ThemeExtension<AppColorsExtension>? other, double t) {
    if (other is! AppColorsExtension) {
      return this;
    }
    return AppColorsExtension(
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      info: Color.lerp(info, other.info, t)!,
      deepSlate: Color.lerp(deepSlate, other.deepSlate, t)!,
      surfaceSlate: Color.lerp(surfaceSlate, other.surfaceSlate, t)!,
      neonCyan: Color.lerp(neonCyan, other.neonCyan, t)!,
      neonPurple: Color.lerp(neonPurple, other.neonPurple, t)!,
      neonLime: Color.lerp(neonLime, other.neonLime, t)!,
      glassGradient: Gradient.lerp(glassGradient, other.glassGradient, t)!,
      primaryGradient: Gradient.lerp(primaryGradient, other.primaryGradient, t)!,
    );
  }
}

// Typography extension for fluid scaling if needed, 
// though we can mostly use standard TextTheme with our own tweaks.
// Adding a specialized Glassmorphism style extension could be useful.

@immutable
class AppDesignExtension extends ThemeExtension<AppDesignExtension> {
  final double cardBorderRadius;
  final double buttonBorderRadius;
  final BoxShadow glowShadow;

  const AppDesignExtension({
    required this.cardBorderRadius,
    required this.buttonBorderRadius,
    required this.glowShadow,
  });

  @override
  AppDesignExtension copyWith({
    double? cardBorderRadius,
    double? buttonBorderRadius,
    BoxShadow? glowShadow,
  }) {
    return AppDesignExtension(
      cardBorderRadius: cardBorderRadius ?? this.cardBorderRadius,
      buttonBorderRadius: buttonBorderRadius ?? this.buttonBorderRadius,
      glowShadow: glowShadow ?? this.glowShadow,
    );
  }

  @override
  AppDesignExtension lerp(ThemeExtension<AppDesignExtension>? other, double t) {
     if (other is! AppDesignExtension) {
      return this;
    }
    return AppDesignExtension(
      cardBorderRadius: other.cardBorderRadius, // usually fixed, but can lerp double
      buttonBorderRadius: other.buttonBorderRadius,
      glowShadow: BoxShadow.lerp(glowShadow, other.glowShadow, t)!,
    );
  }
}
