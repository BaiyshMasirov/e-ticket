import 'dart:ui';

import 'package:eticket/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Loader extends StatelessWidget {
  final Widget child;
  final bool Function(BuildContext context)? isLoadingFunc;

  const Loader({
    required this.child,
    required this.isLoadingFunc,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Visibility(
          visible: isLoadingFunc?.call(context) ?? false,
          child: AbsorbPointer(
            absorbing: true,
            child: Stack(
              children: [
                Center(
                  child: Assets.lotties.loading.lottie(
                    width: 300.w,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaY: 15,
                    sigmaX: 15,
                    tileMode: TileMode.mirror,
                  ),
                  child: Center(
                    child: Assets.lotties.loading.lottie(
                      width: 80.w,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
