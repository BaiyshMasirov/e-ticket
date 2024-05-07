import 'package:eticket/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsContainer extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets? padding;

  const SettingsContainer({
    required this.children,
    this.padding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.r),
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: context.colorScheme.surfaceTint,
        ),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: children.length,
          itemBuilder: (ctx, i) => children[i],
          separatorBuilder: (ctx, i) => Divider(
            thickness: 0.2.h,
          ),
        ),
      ),
    );
  }
}
