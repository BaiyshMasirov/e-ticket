import 'package:flutter/material.dart';

/// use [ItemWithValue] to <T> widgets
class ItemWithValue<T> {
  final T value;
  final String label;
  final TextStyle? labelStyle;
  final String? description;
  final TextStyle? descriptionStyle;

  ItemWithValue({
    required this.value,
    required this.label,
    this.labelStyle,
    this.description,
    this.descriptionStyle,
  });

  /// Если первоначально значение null то лучше просто использовать builder, чтобы не ставить лишние проверки
  static ItemWithValue<T>? buildItem<T>({
    required T? value,
    required String? label,
    TextStyle? labelStyle,
    String? description,
    TextStyle? descriptionStyle,
  }) {
    if (value == null || label == null) {
      return null;
    }

    return ItemWithValue(
      label: label,
      labelStyle: labelStyle,
      value: value,
      description: description,
      descriptionStyle: descriptionStyle,
    );
  }
}
