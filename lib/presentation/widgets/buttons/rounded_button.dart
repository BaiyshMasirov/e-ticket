import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedButton extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final Color? foregroundColor;
  final Color? shadowColor;
  final Size? size;
  final double? elevation;
  final Function()? onPress;

  const RoundedButton({
    required this.child,
    required this.backgroundColor,
    this.elevation,
    this.foregroundColor,
    this.shadowColor,
    this.onPress,
    this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: size ?? Size(80.w, 80.w),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shadowColor: shadowColor,
        elevation: elevation ?? 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.r),
        ),
        enableFeedback: true,
      ),
      onPressed: onPress,
      child: child,
    );
  }
}
