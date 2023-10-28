import 'package:auto_route/auto_route.dart';
import 'package:eticket/common/extensions/extensions.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class EventsByTypeItemShimmer extends StatelessWidget {
  const EventsByTypeItemShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.colorScheme.errorContainer,
      highlightColor: context.colorScheme.onError,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Container(
                color: context.colorScheme.surface,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            height: 10.h,
            width: 100.w,
            color: context.colorScheme.surface,
          ),
          SizedBox(height: 5.h),
          Container(
            height: 10.h,
            width: 100.w,
            color: context.colorScheme.surface,
          ),
        ],
      ),
    );
  }
}
