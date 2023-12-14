import 'package:eticket/generated/fonts.gen.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getLightTheme() {
    return ThemeData(
      fontFamily: FontFamily.montserrat,
      brightness: Brightness.light,
      useMaterial3: true,
      extensions: _getAppColorsLight(),
      listTileTheme: const ListTileThemeData(
        enableFeedback: true,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: ColorName.surfaceVariantL,
        foregroundColor: ColorName.onSurfaceVariantL,
        iconTheme: IconThemeData(color: ColorName.primaryL),
        elevation: 3,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(enableFeedback: true),
      ),
      navigationBarTheme: NavigationBarThemeData(
        indicatorColor: ColorName.primaryL,
        backgroundColor: ColorName.surfaceVariantL,
        elevation: 3,
      ),
      colorScheme: ColorScheme.light(
        primary: ColorName.primaryL,
        onPrimary: ColorName.onPrimaryL,
        primaryContainer: ColorName.primaryContainerL,
        onPrimaryContainer: ColorName.onPrimaryContainerL,
        secondary: ColorName.secondaryL,
        onSecondary: ColorName.onSecondaryL,
        secondaryContainer: ColorName.secondaryContainerL,
        onSecondaryContainer: ColorName.onSecondaryContainerL,
        tertiary: ColorName.tertiaryL,
        onTertiary: ColorName.onTertiaryL,
        tertiaryContainer: ColorName.tertiaryContainerL,
        onTertiaryContainer: ColorName.onTertiaryContainerL,
        error: ColorName.errorL,
        onError: ColorName.onErrorL,
        errorContainer: ColorName.errorContainerL,
        onErrorContainer: ColorName.onErrorContainerL,
        background: ColorName.surfaceL,
        onBackground: ColorName.onSurfaceL,
        surface: ColorName.surfaceL,
        onSurface: ColorName.onSurfaceL,
        surfaceVariant: ColorName.surfaceVariantL,
        onSurfaceVariant: ColorName.onSurfaceVariantL,
        outline: ColorName.outlineL,
        shadow: ColorName.onSurfaceL,
        inverseSurface: ColorName.surfaceInvariantL,
        onInverseSurface: ColorName.onSurfaceInvariantL,
        inversePrimary: ColorName.primaryL,
        surfaceTint: ColorName.surfaceVariantL,
      ),
    );
  }

  static ThemeData getDarkTheme() {
    return ThemeData(
      fontFamily: FontFamily.montserrat,
      brightness: Brightness.dark,
      extensions: _getAppColorsDark(),
      scaffoldBackgroundColor: ColorName.surfaceD,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: ColorName.surfaceVariantD,
        foregroundColor: ColorName.onSurfaceVariantD,
        iconTheme: IconThemeData(color: ColorName.primaryD),
        elevation: 3,
      ),
      navigationBarTheme: NavigationBarThemeData(
        indicatorColor: ColorName.primaryD,
        backgroundColor: ColorName.surfaceVariantD,
        elevation: 3,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(enableFeedback: true),
      ),
      colorScheme: ColorScheme.dark(
        primary: ColorName.primaryD,
        onPrimary: ColorName.onPrimaryD,
        primaryContainer: ColorName.primaryContainerD,
        onPrimaryContainer: ColorName.onPrimaryContainerD,
        secondary: ColorName.secondaryD,
        onSecondary: ColorName.onSecondaryD,
        secondaryContainer: ColorName.secondaryContainerD,
        onSecondaryContainer: ColorName.onSecondaryContainerD,
        tertiary: ColorName.tertiaryD,
        onTertiary: ColorName.onTertiaryD,
        tertiaryContainer: ColorName.tertiaryContainerD,
        onTertiaryContainer: ColorName.onTertiaryContainerD,
        error: ColorName.errorD,
        onError: ColorName.onErrorD,
        errorContainer: ColorName.errorContainerD,
        onErrorContainer: ColorName.onErrorContainerD,
        background: ColorName.surfaceD,
        onBackground: ColorName.onSurfaceD,
        surface: ColorName.surfaceD,
        onSurface: ColorName.onSurfaceD,
        surfaceVariant: ColorName.surfaceVariantD,
        onSurfaceVariant: ColorName.onSurfaceVariantD,
        outline: ColorName.outlineD,
        shadow: ColorName.onSurfaceD,
        inverseSurface: ColorName.surfaceInvariantD,
        onInverseSurface: ColorName.onSurfaceInvariantD,
        inversePrimary: ColorName.primaryD,
        surfaceTint: ColorName.surfaceVariantD,
      ),
    );
  }
}

// generate colors for light theme
List<ThemeExtension<AppColors>> _getAppColorsLight() {
  return [
    // const AppColors(
    //   scaffoldBackground: ColorName.backgroundLight,
    //   onPrimaryButton: ColorName.onPrimaryButtonLight,
    //   primaryButton: ColorName.primaryButtonLight,
    //   container: ColorName.container,
    //   onContainer: ColorName.onContainer,
    // )
  ];
}

// generate colors for dark theme
List<ThemeExtension<AppColors>> _getAppColorsDark() {
  return [
    // const AppColors(
    // scaffoldBackground: ColorName.backgroundDark,
    // onPrimaryButton: ColorName.onPrimaryButtonDark,
    // primaryButton: ColorName.primaryButtonDark,
    // container: ColorName.container,
    // onContainer: ColorName.onContainer,
    // )
  ];
}
