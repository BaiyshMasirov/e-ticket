import 'package:eticket/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eticket/presentation/widgets/models/models.dart';

class CheckboxControlBZ<T> extends StatelessWidget {
  /// [Direction] left or right
  final Direction direction;
  final bool isChecked;
  final Function(bool isChecked) onChanged;
  final EdgeInsets? padding;
  final String label;
  final TextStyle? labelTS;
  final String? description;
  final TextStyle? descriptionTS;
  final double borderRadius;

  const CheckboxControlBZ({
    required this.direction,
    required this.isChecked,
    required this.onChanged,
    required this.label,
    this.labelTS,
    this.description,
    this.descriptionTS,
    this.padding,
    this.borderRadius = 0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        onTap: direction == Direction.hide ? null : () => onChanged(!isChecked),
        borderRadius: BorderRadius.circular(borderRadius),
        child: Container(
          padding: padding,
          child: Row(
            mainAxisAlignment: direction == Direction.right
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.start,
            children: [
              Visibility(
                visible: direction == Direction.left,
                child: SizedBox(
                  width: 24.w,
                  height: 24.w,
                  child: Transform.scale(
                    scale: 1.3,
                    child: Checkbox(
                      activeColor: context.colorScheme.primary,
                      value: isChecked,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      side: BorderSide(
                        width: 0.7,
                        color: context.colorScheme.primary,
                      ),
                      onChanged: direction == Direction.hide
                          ? null
                          : (value) => onChanged(!isChecked),
                    ),
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
                      label,
                      style: labelTS ??
                          TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ).copyWith(
                            color: context.colorScheme.onSurface,
                          ),
                    ),
                    Visibility(
                      visible: description != null,
                      child: SizedBox(height: 2.h),
                    ),
                    Visibility(
                      visible: description != null,
                      child: Text(
                        description ?? '',
                        style: descriptionTS ??
                            TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ).copyWith(
                              color: context.colorScheme.onSurface,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: direction == Direction.right,
                child: SizedBox(width: 16.w),
              ),
              Visibility(
                visible: direction == Direction.right,
                child: SizedBox(
                  width: 24.w,
                  height: 24.w,
                  child: Transform.scale(
                    scale: 1.3,
                    child: Checkbox(
                      // activeColor: ColorName.color796EE2,
                      value: isChecked,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      side: BorderSide(
                        width: 0.5,
                        color: context.colorScheme.primary,
                      ),
                      onChanged: direction == Direction.hide
                          ? null
                          : (value) => onChanged(!isChecked),
                    ),
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
