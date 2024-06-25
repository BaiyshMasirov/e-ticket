import 'package:flutter/services.dart';

class SpaceStartTrimTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    if (newValue.text.startsWith(' ')) {
      return oldValue;
    }

    return newValue;
  }
}