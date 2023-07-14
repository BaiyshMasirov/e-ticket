import 'package:e_ti_app/helper/utils/fonts.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class UtilTextStyles {
  UtilTextStyles._();

  static TextStyle get customTextButtonStyle => const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontFamily: UtilFonts.roboto,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get successTextButtonStyle => const TextStyle(
        color: Constants.backColor,
        fontSize: 20,
        fontFamily: UtilFonts.roboto,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get welcomeText => const TextStyle(
        color: Colors.white,
        fontSize: 32,
        fontFamily: UtilFonts.roboto,
        letterSpacing: 0.7,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get lockText => const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontFamily: UtilFonts.roboto,
        letterSpacing: 0.7,
        fontWeight: FontWeight.w600,
      );
}
