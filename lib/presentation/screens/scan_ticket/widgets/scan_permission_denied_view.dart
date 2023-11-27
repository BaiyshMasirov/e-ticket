import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScanPermissionDeniedView extends StatelessWidget {
  final Function() setPermission;

  const ScanPermissionDeniedView({
    required this.setPermission,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.background,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                LocaleKeys.request_access_to_camera_permission_title.tr(),
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28.sp,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.h),
              Text(
                LocaleKeys.request_access_to_camera_permission_description.tr(),
                style: TextStyle(
                  fontSize: 17.sp,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.h),
              PrimaryButton(
                title: LocaleKeys.settings.tr(),
                onPressed: () {
                  setPermission();
                },
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
