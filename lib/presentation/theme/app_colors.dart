import 'package:flutter/material.dart';

// AppColors for using different COLORS when theme changing
class AppColors extends ThemeExtension<AppColors> {
  // an example hot to add colors
  final Color scaffoldBackground;

  const AppColors({
    required this.scaffoldBackground,
  });

  @override
  AppColors copyWith({
    Color? scaffoldBackground,
  }) {
    return AppColors(
      scaffoldBackground: scaffoldBackground ?? this.scaffoldBackground,
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
    );
  }
}
