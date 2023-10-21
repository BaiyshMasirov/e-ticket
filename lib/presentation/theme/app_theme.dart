import 'package:eticket/generated/colors.gen.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getLightTheme() {
    return ThemeData.dark(
      useMaterial3: true,
    ).copyWith(
      extensions: _getAppColorsLight(),
      scaffoldBackgroundColor: ColorName.scaffoldBackgroundLight,
      colorScheme: const ColorScheme.light(
        primary: ColorName.primaryLight,
        onPrimary: ColorName.onPrimaryLight,
        primaryContainer: ColorName.primaryContainerLight,
        onPrimaryContainer: ColorName.onPrimaryContainerLight,
        secondary: ColorName.secondaryLight,
        onSecondary: ColorName.onSecondaryLight,
        secondaryContainer: ColorName.secondaryContainerLight,
        onSecondaryContainer: ColorName.onSecondaryContainerLight,
        tertiary: ColorName.tertiaryLight,
        onTertiary: ColorName.onTertiaryLight,
        tertiaryContainer: ColorName.tertiaryContainerLight,
        onTertiaryContainer: ColorName.onTertiaryContainerLight,
        error: ColorName.errorLight,
        onError: ColorName.onErrorLight,
        errorContainer: ColorName.errorContainerLight,
        onErrorContainer: ColorName.onErrorContainerLight,
        background: ColorName.backgroundLight,
        onBackground: ColorName.onBackgroundLight,
        surface: ColorName.surfaceLight,
        onSurface: ColorName.onSurfaceLight,
        surfaceVariant: ColorName.surfaceVariantLight,
        onSurfaceVariant: ColorName.onSurfaceVariantLight,
        outline: ColorName.outlineLight,
        shadow: ColorName.shadowLight,
        inverseSurface: ColorName.inverseSurfaceLight,
        onInverseSurface: ColorName.onInverseSurfaceLight,
        inversePrimary: ColorName.inversePrimaryLight,
        surfaceTint: ColorName.surfaceTintLight,
      ),
    );
  }

  static ThemeData getDarkTheme() {
    return ThemeData.dark(
      useMaterial3: true,
    ).copyWith(
      extensions: _getAppColorsDark(),
      scaffoldBackgroundColor: ColorName.scaffoldBackgroundDark,
      colorScheme: const ColorScheme.dark(
        primary: ColorName.primaryDark,
        onPrimary: ColorName.onPrimaryDark,
        primaryContainer: ColorName.primaryContainerDark,
        onPrimaryContainer: ColorName.onPrimaryContainerDark,
        secondary: ColorName.secondaryDark,
        onSecondary: ColorName.onSecondaryDark,
        secondaryContainer: ColorName.secondaryContainerDark,
        onSecondaryContainer: ColorName.onSecondaryContainerDark,
        tertiary: ColorName.tertiaryDark,
        onTertiary: ColorName.onTertiaryDark,
        tertiaryContainer: ColorName.tertiaryContainerDark,
        onTertiaryContainer: ColorName.onTertiaryContainerDark,
        error: ColorName.errorDark,
        onError: ColorName.onErrorDark,
        errorContainer: ColorName.errorContainerDark,
        onErrorContainer: ColorName.onErrorContainerDark,
        background: ColorName.backgroundDark,
        onBackground: ColorName.onBackgroundDark,
        surface: ColorName.surfaceDark,
        onSurface: ColorName.onSurfaceDark,
        surfaceVariant: ColorName.surfaceVariantDark,
        onSurfaceVariant: ColorName.onSurfaceVariantDark,
        outline: ColorName.outlineDark,
        shadow: ColorName.shadowDark,
        inverseSurface: ColorName.inverseSurfaceDark,
        onInverseSurface: ColorName.onInverseSurfaceDark,
        inversePrimary: ColorName.inversePrimaryDark,
        surfaceTint: ColorName.surfaceTintDark,
      ),
    );
  }
}

// generate colors for light theme
List<ThemeExtension<AppColors>> _getAppColorsLight() {
  return [
    const AppColors(
      scaffoldBackground: ColorName.scaffoldBackgroundLight,
    )
  ];
}

// generate colors for dark theme
List<ThemeExtension<AppColors>> _getAppColorsDark() {
  return [
    const AppColors(
      scaffoldBackground: ColorName.scaffoldBackgroundDark,
    )
  ];
}
