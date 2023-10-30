import 'package:eticket/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketStandingPlaceSubtitle extends StatelessWidget {
  final String title;
  final int count;

  const TicketStandingPlaceSubtitle({
    required this.title,
    required this.count,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: context.theme.textTheme.bodySmall,
        ),
        SizedBox(height: 5.h),
        Text(
          count.toString(),
          style: context.theme.textTheme.bodySmall,
        ),
      ],
    );
  }
}
