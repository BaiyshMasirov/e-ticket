class DoubleSerializers {
  static double? fromJsonZeroNullable(dynamic json) {
    if (json == null || json == 0) return null;

    return json;
  }

  static double? toJsonZeroNullable(double? number) {
    if (number == null || number == 0) return null;

    return number;
  }
}
