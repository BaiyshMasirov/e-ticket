import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eticket/presentation/widgets/widgets.dart';

class RadioControlBZ<T> extends StatelessWidget {
  /// [Direction] left or right
  final Direction direction;
  final ItemWithValue<T> item;
  final T? groupValue;
  final Function(T item) onChanged;
  final EdgeInsets? padding;
  final double? bRadius;
  final Color? bgColor;

  const RadioControlBZ({
    required this.direction,
    required this.onChanged,
    required this.item,
    required this.groupValue,
    this.bgColor,
    this.bRadius,
    this.padding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(bRadius ?? 0),
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(bRadius ?? 0),
        onTap: () => onChanged(item.value),
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(bRadius ?? 0),
            color: bgColor,
          ),
          child: Row(
            mainAxisAlignment: direction == Direction.right
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.start,
            children: [
              Visibility(
                visible: direction == Direction.left,
                child: SizedBox(
                  width: 20.w,
                  height: 20.w,
                  child: Radio<T>(
                    fillColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return context.colorScheme.primary;
                      }

                      return Colors.white;
                    }),
                    value: item.value,
                    groupValue: groupValue,
                    onChanged: (value) {
                      if (value != null) onChanged(value);
                    },
                    activeColor: context.colorScheme.primary,
                  ),
                ),
              ),
              Visibility(
                visible: direction == Direction.left,
                child: SizedBox(width: 16.w),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      item.label,
                      style: item.labelStyle ??
                          TextStyle(fontSize: 14.sp).copyWith(
                            color: context.colorScheme.onSurface,
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
                        style: item.descriptionStyle ??
                            TextStyle(fontSize: 14.sp).copyWith(
                              color: context.colorScheme.onSurface,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible:
                    direction == Direction.right && groupValue == item.value,
                child: SizedBox(width: 16.w),
              ),
              Visibility(
                visible: direction == Direction.right,
                child: SizedBox(
                  width: 20.w,
                  height: 20.w,
                  child: Radio<T>(
                    value: item.value,
                    groupValue: groupValue,
                    onChanged: (value) {
                      if (value != null) onChanged(value);
                    },
                    activeColor: context.colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
