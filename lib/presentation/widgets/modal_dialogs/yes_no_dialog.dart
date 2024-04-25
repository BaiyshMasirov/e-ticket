import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YesNoDialog extends StatelessWidget {
  final String title;
  final Function() onNoPress;
  final Function() onYesPress;

  const YesNoDialog._({
    required this.title,
    required this.onNoPress,
    required this.onYesPress,
    Key? key,
  }) : super(key: key);

  static void showModal({
    required BuildContext context,
    required String title,
    required Function() onNoPress,
    required Function() onYesPress,
  }) {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        child: YesNoDialog._(
          title: title,
          onNoPress: onNoPress,
          onYesPress: onYesPress,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20.h,
        horizontal: 14.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: context.colorScheme.onSurface,
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Expanded(
                child: TertiaryButton(
                  title: LocaleKeys.no.tr(),
                  onPressed: onNoPress,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: PrimaryButton(
                  title: LocaleKeys.yes.tr(),
                  onPressed: onYesPress,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
