import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/widgets/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwitchControlBZ<T> extends StatelessWidget {
  final ItemWithValue<T> item;
  final EdgeInsets? padding;
  final bool? isChecked;
  final Function(bool? isChecked)? onChange;
  final Color? bgColor;
  final double bRadius;
  final Color? borderColor;
  final TextStyle? textStyle;

  const SwitchControlBZ({
    required this.item,
    required this.onChange,
    required this.isChecked,
    this.bRadius = 0,
    this.borderColor,
    this.bgColor,
    this.padding,
    this.textStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(bRadius),
      splashColor: Colors.transparent,
      onTap: () => onChange?.call(isChecked == null ? null : !isChecked!),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor ?? Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(bRadius),
          color: bgColor,
        ),
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    item.label,
                    style: TextStyle(fontSize: 14.sp).copyWith(
                      color: textStyle?.color ?? context.colorScheme.onSurface,
                      fontWeight: textStyle?.fontWeight,
                      fontSize: textStyle?.fontSize,
                    ),
                  ),
                  Visibility(
                    visible: item.description != null,
                    child: SizedBox(height: 2.h),
                  ),
                  Visibility(
                    visible: item.description != null,
                    child: Text(
                      item.description ?? '',
                      style: TextStyle(fontSize: 14.sp).copyWith(
                        color: context.colorScheme.onSurface,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10.w),
            Transform.scale(
              scale: 0.8,
              child: CupertinoSwitch(
                value: isChecked ?? false,
                onChanged: (value) =>
                    onChange?.call(isChecked == null ? null : !isChecked!),
                activeColor: context.colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
