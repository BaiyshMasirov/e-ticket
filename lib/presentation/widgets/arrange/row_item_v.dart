import 'package:eticket/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowItemV extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final String value;
  final TextStyle? valueStyle;
  final Widget? leading;
  final CrossAxisAlignment? crossAxisAlignment;

  const RowItemV({
    required this.title,
    required this.value,
    this.titleStyle,
    this.valueStyle,
    this.leading,
    this.crossAxisAlignment,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      children: [
        if (leading != null)
          Row(
            children: [
              leading!,
              SizedBox(width: 16.w),
            ],
          ),
        Text(
          title,
          style: titleStyle ??
              TextStyle(
                fontWeight: titleStyle?.fontWeight ?? FontWeight.w400,
                fontSize: titleStyle?.fontSize ?? 13.sp,
                color: titleStyle?.color ?? context.colorScheme.onSurface,
              ),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontWeight: valueStyle?.fontWeight ?? FontWeight.w400,
              fontSize: valueStyle?.fontSize ?? 13.sp,
              color: valueStyle?.color ?? context.colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}
