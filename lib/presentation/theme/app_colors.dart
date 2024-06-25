import 'package:flutter/material.dart';

// AppColors for using different COLORS when theme changing
class AppColors extends ThemeExtension<AppColors> {
  // an example hot to add colors
  final Color scaffoldBackground;
  final Color primaryButton;
  final Color onPrimaryButton;
  final Color container;
  final Color onContainer;
  final Color grey;
  final Color yellow;
  final Color orange;
  final Color red;
  final Color blue;
  final Color green;

  const AppColors({
    required this.scaffoldBackground,
    required this.primaryButton,
    required this.onPrimaryButton,
    required this.container,
    required this.onContainer,
    required this.grey,
    required this.yellow,
    required this.orange,
    required this.red,
    required this.blue,
    required this.green,
  });

  @override
  AppColors copyWith({
    Color? scaffoldBackground,
    Color? primaryButton,
    Color? onPrimaryButton,
    Color? container,
    Color? onContainer,
    Color? grey,
    Color? yellow,
    Color? orange,
    Color? red,
    Color? blue,
    Color? green,
  }) {
    return AppColors(
      scaffoldBackground: scaffoldBackground ?? this.scaffoldBackground,
      primaryButton: primaryButton ?? this.primaryButton,
      onPrimaryButton: onPrimaryButton ?? this.onPrimaryButton,
      container: container ?? this.container,
      onContainer: onContainer ?? this.onContainer,
      grey: grey ?? this.grey,
      yellow: yellow ?? this.yellow,
      orange: orange ?? this.orange,
      red: red ?? this.red,
      blue: blue ?? this.blue,
      green: green ?? this.green,
    );
  }

  @override
  AppColors lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    return this;
  }
}
