import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppScaffold extends StatelessWidget {
  /// set if appbar is null
  final String? title;
  final PreferredSizeWidget? appBar;
  final Widget body;
  final bool Function(BuildContext context)? isLoadingFunc;
  final bool extendBodyBehindAppBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? bottomSheet;
  final bool? extendBody;
  final Color? bgColor;

  const AppScaffold({
    required this.body,
    this.extendBodyBehindAppBar = false,
    this.floatingActionButtonLocation,
    this.floatingActionButton,
    this.bottomSheet,
    this.appBar,
    this.title,
    this.isLoadingFunc,
    this.extendBody,
    this.bgColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WillPopScope(
          onWillPop: () async {
            return context.router.canPop();
          },
          child: Scaffold(
            backgroundColor: bgColor,
            extendBody: extendBody ?? false,
            appBar: _buildAppBar(),
            floatingActionButton: floatingActionButton,
            floatingActionButtonLocation: floatingActionButtonLocation,
            extendBodyBehindAppBar: extendBodyBehindAppBar,
            bottomSheet: bottomSheet,
            body: body,
          ),
        ),
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

  PreferredSizeWidget? _buildAppBar() {
    if (appBar != null) {
      return appBar;
    }
    if (title != null) {
      return AppBar(
        title: Text(title!),
      );
    }
    return null;
  }
}
