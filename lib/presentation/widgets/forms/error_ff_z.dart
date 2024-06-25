import 'package:eticket/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Just use this in pair when need validation of [CheckboxControlButtonZ]/[RadioControlButtonZ]/[SwitchControlButtonZ]
/// and with other custom widgets without default validation
class ErrorFFZ extends StatelessWidget {
  final TextStyle? errorStyle;
  final String? Function()? validator;

  const ErrorFFZ({
    required this.validator,
    this.errorStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormField(
      builder: (field) => Visibility(
        visible: field.hasError,
        child: Padding(
          padding: EdgeInsets.only(top: 8.h),
          child: Text(
            field.errorText ?? '',
            style: context.theme.textTheme.bodySmall!.copyWith(
              color: context.theme.colorScheme.error,
            ),
          ),
        ),
      ),
      validator: (value) => validator?.call(),
    );
  }
}
