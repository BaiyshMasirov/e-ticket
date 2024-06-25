import 'package:eticket/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColItemV extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final String value;
  final TextStyle? valueStyle;
  final Widget? leading;
  final double? itemsSpacing;
  final CrossAxisAlignment? colCrossAxisAlignment;

  const ColItemV({
    required this.title,
    required this.value,
    this.titleStyle,
    this.valueStyle,
    this.leading,
    this.colCrossAxisAlignment,
    this.itemsSpacing,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (leading != null)
          Row(
            children: [
              leading!,
              SizedBox(width: 16.w),
            ],
          ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: colCrossAxisAlignment ?? CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: titleStyle?.fontWeight ?? FontWeight.w600,
                fontSize: titleStyle?.fontSize ?? 16.sp,
                color: titleStyle?.color ?? context.colorScheme.onSurface,
              ),
            ),
            SizedBox(height: itemsSpacing ?? 8.h),
            Text(
              value,
              style: TextStyle(
                fontWeight: valueStyle?.fontWeight ?? FontWeight.w600,
                fontSize: valueStyle?.fontSize ?? 16.sp,
                color: valueStyle?.color ?? context.colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
