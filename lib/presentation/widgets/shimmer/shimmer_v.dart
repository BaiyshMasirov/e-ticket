import 'package:eticket/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerV extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget? child;
  final Color? baseColor;
  final Color? highlightColor;
  final double? borderRadius;

  const ShimmerV({
    this.width,
    this.height,
    this.child,
    this.baseColor,
    this.highlightColor,
    this.borderRadius,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? context.colorScheme.surfaceTint,
      highlightColor:
          highlightColor ?? context.colorScheme.surfaceTint.withOpacity(0.8),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(borderRadius ?? 15.r),
        ),
        child: child,
      ),
    );
  }
}
