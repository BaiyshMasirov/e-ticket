class PhoneFormatters {
  static String unMaskPhoneNumber(String maskedPhoneNumber) {
    final phoneNumber = maskedPhoneNumber.replaceAll(RegExp(r'[^0-9]'), '');
    return phoneNumber;
  }
}
