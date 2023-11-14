import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyContent extends StatelessWidget {
  final Function()? onTryAgain;

  const EmptyContent({
    this.onTryAgain,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Assets.lotties.emptyGlass.lottie(
            width: 200.w,
            fit: BoxFit.fitWidth,
            repeat: false,
          ),
          SizedBox(height: 10.h),
          Text(
            LocaleKeys.ops.tr(),
            style: TextStyle(fontSize: 24.sp),
          ),
          SizedBox(height: 4.h),
          Text(
            LocaleKeys.nothing_here.tr(),
            style: TextStyle(fontSize: 16.sp),
          ),
          SizedBox(height: 10.h),
          Visibility(
            visible: onTryAgain != null,
            child: TertiaryButton(
              title: LocaleKeys.try_again.tr(),
              onPressed: onTryAgain,
              horizontalPadding: 40.w,
            ),
          ),
        ],
      ),
    );
  }
}
