import 'package:eticket/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:eticket/presentation/theme/theme.dart';

class SearchItemShimmer extends StatelessWidget {
  const SearchItemShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.colorScheme.surfaceTint,
      highlightColor: context.colorScheme.surfaceTint.withOpacity(0.8),
      child: Container(
        height: 150.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: defaultBr,
        ),
      ),
    );
  }
}
