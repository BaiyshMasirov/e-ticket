import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownFormFieldZ<T> extends StatelessWidget {
  final String label;
  final DropDownFormFieldZModel<T>? value;
  final bool checkForNullEmpty;
  final List<DropDownFormFieldZModel<T>>? items;
  final Function(T? value) onChanged;
  final String? Function(T? value)? validate;

  const DropDownFormFieldZ({
    required this.label,
    required this.onChanged,
    this.checkForNullEmpty = false,
    this.validate,
    this.value,
    this.items,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<T>(
      isExpanded: true,
      isDense: true,
      customButton: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                value?.label ?? '',
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -7),
              child: const Icon(
                Icons.arrow_drop_down_circle_outlined,
              ),
            ),
          ],
        ),
      ),
      items: items?.map(_buildDropdownItem).toList(),
      onChanged: onChanged,
      value: value?.value,
      validator: (value) {
        if (checkForNullEmpty && (value == null)) {
          return LocaleKeys.fillEmptyField.tr();
        }

        return validate?.call(value);
      },
      decoration: InputDecoration(
        labelText: label,
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 10.h,
        ),
      ),
    );
  }
}

DropdownMenuItem<T> _buildDropdownItem<T>(DropDownFormFieldZModel<T> item) {
  return DropdownMenuItem<T>(
    value: item.value,
    child: Text(
      item.label,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    ),
  );
}

class DropDownFormFieldZModel<T> {
  final String label;
  final T value;

  DropDownFormFieldZModel(this.label, this.value);
}
