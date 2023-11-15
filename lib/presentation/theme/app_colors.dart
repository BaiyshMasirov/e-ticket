import 'package:flutter/material.dart';

// AppColors for using different COLORS when theme changing
class AppColors extends ThemeExtension<AppColors> {
  // an example hot to add colors
  final Color scaffoldBackground;
  final Color primaryButton;
  final Color onPrimaryButton;
  final Color container;
  final Color onContainer;

  const AppColors({
    required this.scaffoldBackground,
    required this.primaryButton,
    required this.onPrimaryButton,
    required this.container,
    required this.onContainer,
  });

  @override
  AppColors copyWith({
    Color? scaffoldBackground,
    Color? primaryButton,
    Color? onPrimaryButton,
    Color? container,
    Color? onContainer,
  }) {
    return AppColors(
      scaffoldBackground: scaffoldBackground ?? this.scaffoldBackground,
      primaryButton: primaryButton ?? this.primaryButton,
      onPrimaryButton: onPrimaryButton ?? this.onPrimaryButton,
      container: container ?? this.container,
      onContainer: onContainer ?? this.onContainer,
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
      container:
          Color.lerp(container, other.container, t)!,
      onContainer:
          Color.lerp(onContainer, other.onContainer, t)!,
    );
  }
}
