import 'package:eticket/generated/colors.gen.dart';
import 'package:eticket/generated/fonts.gen.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getLightTheme() {
    return ThemeData(
      fontFamily: FontFamily.montserrat,
      scaffoldBackgroundColor: ColorName.backgroundLight,
      brightness: Brightness.light,
      useMaterial3: true,
      extensions: _getAppColorsLight(),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: ColorName.tertiaryContainerLight.withOpacity(0.2),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: ColorName.tertiaryContainerLight.withOpacity(0.2),
        enableFeedback: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorName.tertiaryLight,
      ),
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
    return ThemeData(
      fontFamily: FontFamily.montserrat,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: ColorName.backgroundDark,
      extensions: _getAppColorsDark(),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: ColorName.tertiaryContainerDark.withOpacity(0.2),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: ColorName.tertiaryContainerDark.withOpacity(0.2),
        enableFeedback: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorName.tertiaryDark,
      ),
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
      scaffoldBackground: ColorName.backgroundLight,
    )
  ];
}

// generate colors for dark theme
List<ThemeExtension<AppColors>> _getAppColorsDark() {
  return [
    const AppColors(
      scaffoldBackground: ColorName.backgroundDark,
    )
  ];
}
