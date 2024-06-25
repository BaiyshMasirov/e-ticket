import 'package:eticket/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Simple rounded container like [Card]
class PrimaryContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? bgColor;
  final bool enableShadow;
  final double? borderRadius;

  const PrimaryContainer({
    required this.child,
    this.enableShadow = false,
    this.borderRadius,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.bgColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding ?? EdgeInsets.all(16.w),
      margin: margin,
      decoration: BoxDecoration(
        color: bgColor ?? context.appColors.grey.withOpacity(.1),
        borderRadius: BorderRadius.circular(borderRadius ?? 6.r),
        boxShadow: enableShadow
            ? [
                BoxShadow(
                  color: context.theme.shadowColor.withOpacity(0.06),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ]
            : null,
      ),
      child: child,
    );
  }
}
