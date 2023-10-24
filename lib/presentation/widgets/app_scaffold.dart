import 'dart:ui';

import 'package:eticket/common/extensions/extensions.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppScaffold extends StatelessWidget {
  final String? title;
  final Widget body;
  final bool Function(BuildContext context)? isLoadingFunc;

  const AppScaffold({
    required this.body,
    this.title,
    this.isLoadingFunc,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title != null
          ? AppBar(
              title: Text(title!),
            )
          : null,
      body: Stack(
        fit: StackFit.expand,
        children: [
          body,
          Visibility(
            visible: isLoadingFunc?.call(context) ?? false,
            child: AbsorbPointer(
              absorbing: true,
              child: Stack(
                children: [
                  Center(
                    child: Assets.lotties.loading.lottie(
                      width: 120.w,
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
          )
        ],
      ),
    );
  }
}
