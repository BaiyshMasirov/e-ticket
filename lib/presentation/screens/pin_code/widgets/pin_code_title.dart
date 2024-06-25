import 'package:eticket/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PinCodeTitle extends StatelessWidget {
  final String title;

  const PinCodeTitle({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16.sp,
          color: context.colorScheme.onSurface,
        ),
      ),
    );
  }
}
