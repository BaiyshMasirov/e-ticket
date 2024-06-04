import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/contact_info/contact_info_v.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ContactInfoScreen extends StatelessWidget {
  const ContactInfoScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.contact_info.tr(),
          style: TextStyle(fontSize: 15.sp),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: const ContactInfoV(),
      ),
    );
  }
}
