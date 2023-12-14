import 'package:eticket/common/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TertiaryButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final double? horizontalPadding;
  final Widget? icon;

  const TertiaryButton({
    required this.title,
    this.icon,
    this.horizontalPadding,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final suffixIcon = _buildIcon();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            foregroundColor: context.colorScheme.onTertiaryContainer,
            backgroundColor: context.colorScheme.tertiaryContainer,
            minimumSize: Size.fromHeight(40.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            )),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (suffixIcon != null) suffixIcon,
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget? _buildIcon() {
    return icon == null
        ? null
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon!,
              SizedBox(width: 10.w),
            ],
          );
  }
}
