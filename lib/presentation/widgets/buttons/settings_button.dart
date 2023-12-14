import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsButton extends StatelessWidget {
  final Function()? onPress;
  final String label;
  final EdgeInsets? padding;
  final Widget? icon;

  const SettingsButton({
    required this.label,
    this.icon,
    this.padding,
    this.onPress,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: padding ?? EdgeInsets.all(14.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 10.w),
            icon ??
                Icon(
                  Icons.chevron_right_rounded,
                  size: 24.w,
                  color: context.colorScheme.outline.withOpacity(0.4),
                ),
          ],
        ),
      ),
    );
  }
}
