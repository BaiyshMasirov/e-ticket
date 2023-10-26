import 'package:eticket/common/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final double? horizontalPadding;
  final Widget? icon;

  const PrimaryButton({
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
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: context.colorScheme.onError,
            foregroundColor: context.colorScheme.onErrorContainer,
            minimumSize: Size.fromHeight(40.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            )),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (suffixIcon != null) suffixIcon,
            Text(title),
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
