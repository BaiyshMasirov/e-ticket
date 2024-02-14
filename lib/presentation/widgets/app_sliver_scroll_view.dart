import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSliverScrollView extends StatelessWidget {
  final Future<void> Function()? onRefresh;
  final Widget? headerSliver;
  final List<Widget> slivers;

  const AppSliverScrollView({
    required this.slivers,
    this.headerSliver,
    this.onRefresh,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final refreshIndicatorWidget = _buildIndicator(
      slivers: slivers,
      headerSliver: headerSliver,
      onRefresh: onRefresh,
    );

    return refreshIndicatorWidget;
  }

  Widget _buildIndicator({
    required List<Widget> slivers,
    Widget? headerSliver,
    Future<void> Function()? onRefresh,
  }) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      slivers: [
        if (headerSliver != null) headerSliver,
        if (onRefresh != null)
          _buildSliverRefreshControl(onRefresh: onRefresh),
        ...slivers,
      ],
    );
  }
}

Widget _buildSliverRefreshControl({
  required Future<void> Function() onRefresh,
}) {
  final refreshTriggerPullDistance = 130.h;
  return Platform.isIOS
      ? CupertinoSliverRefreshControl(
          onRefresh: onRefresh,
          refreshTriggerPullDistance: refreshTriggerPullDistance,
        )
      : CupertinoSliverRefreshControl(
          onRefresh: onRefresh,
          refreshTriggerPullDistance: refreshTriggerPullDistance,
          builder: _buildAndroidRefreshIndicator,
        );
}

Widget _buildAndroidRefreshIndicator(
  BuildContext context,
  RefreshIndicatorMode refreshState,
  double pulledExtent,
  double refreshTriggerPullDistance,
  double refreshIndicatorExtent,
) {
  const Curve opacityCurve = Interval(0.4, 0.8, curve: Curves.easeInOut);
  return Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: refreshState == RefreshIndicatorMode.drag
          ? Opacity(
              opacity: opacityCurve.transform(
                  min(pulledExtent / refreshTriggerPullDistance, 1.0)),
              child: const Icon(
                CupertinoIcons.down_arrow,
                color: CupertinoColors.inactiveGray,
                size: 36.0,
              ),
            )
          : Opacity(
              opacity: opacityCurve
                  .transform(min(pulledExtent / refreshIndicatorExtent, 1.0)),
              child: const CircularProgressIndicator(
                strokeWidth: 3.0,
                color: Colors.grey,
              ),
            ),
    ),
  );
}
