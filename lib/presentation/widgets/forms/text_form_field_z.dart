import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFieldZ extends StatelessWidget {
  final String label;
  final String? placeholder;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final String? Function(String?)? validate;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType textInputType;
  final Widget? suffix;
  final int? minLines;
  final bool checkForNullEmpty;
  final bool readonly;
  final bool enabled;
  final String? errorText;
  final void Function()? onTap;
  final InputDecoration? inputDecoration;
  final TextCapitalization textCapitalization;
  final void Function(String text)? onChanged;
  final TextInputAction? textInputAction;
  final void Function(String)? onFieldSubmitted;

  const TextFormFieldZ({
    required this.controller,
    required this.label,
    this.focusNode,
    this.obscureText = false,
    this.textInputType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    this.checkForNullEmpty = false,
    this.readonly = false,
    this.enabled = true,
    this.textInputAction,
    this.onFieldSubmitted,
    this.minLines,
    this.onTap,
    this.placeholder,
    this.validate,
    this.inputFormatters,
    this.suffix,
    this.errorText,
    this.inputDecoration,
    this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textFieldInputFormatters = [
      SpaceStartTrimTextInputFormatter(),
      ...?inputFormatters,
    ];

    final List<TextInputFormatter> textInputFormatters = textInputType ==
            TextInputType.number
        ? [FilteringTextInputFormatter.digitsOnly, ...textFieldInputFormatters]
        : textFieldInputFormatters;

    return TextFormField(
      focusNode: focusNode,
      enabled: enabled,
      onTap: onTap,
      textCapitalization: textCapitalization,
      controller: controller,
      readOnly: readonly,
      obscureText: obscureText,
      keyboardType: textInputType,
      minLines: minLines,
      maxLines: minLines != null ? null : 1,
      onChanged: onChanged,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      decoration: inputDecoration ??
          InputDecoration(
            filled: true,
            // focusColor: Colors.yellow,
            // fillColor: Colors.white,
            labelText: label,
            // labelStyle: const TextStyle(color: Colors.black),
            // floatingLabelStyle: TextStyle(color: Colors.white),
            suffixIcon: suffix,
            hintText: placeholder,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 10.h,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: context.colorScheme.outline,
              ),
            ),
          ),
      inputFormatters: textInputFormatters,
      validator: (value) {
        if (checkForNullEmpty && (value == null || value.isEmpty)) {
          return errorText ?? LocaleKeys.fillEmptyField.tr();
        }

        return validate?.call(value);
      },
    );
  }
}
