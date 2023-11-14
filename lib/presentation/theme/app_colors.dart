import 'package:flutter/material.dart';

// AppColors for using different COLORS when theme changing
class AppColors extends ThemeExtension<AppColors> {
  // an example hot to add colors
  final Color scaffoldBackground;
  final Color primaryButton;
  final Color onPrimaryButton;

  const AppColors({
    required this.scaffoldBackground,
    required this.primaryButton,
    required this.onPrimaryButton,
  });

  @override
  AppColors copyWith({
    Color? scaffoldBackground,
    Color? primaryButton,
    Color? onPrimaryButton,
  }) {
    return AppColors(
      scaffoldBackground: scaffoldBackground ?? this.scaffoldBackground,
      primaryButton: primaryButton ?? this.primaryButton,
      onPrimaryButton: onPrimaryButton ?? this.onPrimaryButton,
    );
  }

  @override
  AppColors lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) {
      return this;
    }

    return AppColors(
      scaffoldBackground:
          Color.lerp(scaffoldBackground, other.scaffoldBackground, t)!,
      primaryButton:
          Color.lerp(primaryButton, other.primaryButton, t)!,
      onPrimaryButton:
          Color.lerp(onPrimaryButton, other.onPrimaryButton, t)!,
    );
  }
}
