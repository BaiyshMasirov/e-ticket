import 'dart:ui';

import 'package:eticket/common/extensions/extensions.dart';
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

  const AppScaffold({
    required this.body,
    this.extendBodyBehindAppBar = false,
    this.floatingActionButtonLocation,
    this.floatingActionButton,
    this.appBar,
    this.title,
    this.isLoadingFunc,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      body: Stack(
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
