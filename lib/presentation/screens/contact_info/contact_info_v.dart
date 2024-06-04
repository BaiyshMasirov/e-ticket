import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/contact_info/widgets/widgets.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactInfoV extends StatelessWidget {
  const ContactInfoV({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleTS = TextStyle(fontSize: 14.sp);

    return Column(
      children: [
        Text(LocaleKeys.contact_info_desc.tr()),
        SizedBox(height: 15.h),
        PrimaryContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.customer_support.tr(),
                style: titleTS,
              ),
              SizedBox(height: 10.h),
              ContactItemV.fromIcon(
                iconData: CupertinoIcons.phone,
                iconColor: context.colorScheme.onSurface.withOpacity(0.6),
                iconBackgroundColor:
                    context.colorScheme.outline.withOpacity(0.3),
                title: LocaleKeys.contact_phone_number.tr(),
                info: LocaleKeys.in_await.tr(),
                // onTapped: () => launchUrlString('tel:+(000) 000 00 00 00'),
                // onLongTapped: () => copyData(
                //   context,
                //   data: '+(000) 000 00 00 00',
                // ),
              ),
              SizedBox(height: 10.h),
              ContactItemV.fromIcon(
                iconData: CupertinoIcons.mail,
                iconColor: context.colorScheme.onSurface.withOpacity(0.6),
                iconBackgroundColor:
                    context.colorScheme.outline.withOpacity(0.3),
                title: LocaleKeys.email_address.tr(),
                info: context.appConfigs.contactEmail,
                onTapped: () => launchUrlString(
                    'mailto:${context.appConfigs.contactEmail}'),
                onLongTapped: () => copyData(
                  context,
                  data: context.appConfigs.contactEmail,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15.h),
        PrimaryContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.social_media.tr(),
                style: titleTS,
              ),
              SizedBox(height: 10.h),
              ContactItemV.fromSvg(
                svgPath: Assets.svgs.instagram.path,
                iconBackgroundColor: const Color(0xFFc13584),
                title: LocaleKeys.instagram.tr(),
                info: context.appConfigs.websiteName,
                onTapped: () => launchUrl(
                  Uri.parse(context.appConfigs.instagramUrl),
                  mode: LaunchMode.externalApplication,
                ),
                onLongTapped: () => copyData(
                  context,
                  data: context.appConfigs.instagramUrl,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15.h),
        PrimaryContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(LocaleKeys.website.tr()),
              SizedBox(height: 10.h),
              ContactItemV.fromImage(
                imagePath: Assets.logos.logo.path,
                iconBackgroundColor: context.appColors.scaffoldBackground,
                title: context.appConfigs.websiteName,
                info: context.appConfigs.websiteUrl,
                onTapped: () => launchUrl(
                  Uri.parse(context.appConfigs.websiteUrl),
                  mode: LaunchMode.externalApplication,
                ),
                onLongTapped: () => copyData(
                  context,
                  data: context.appConfigs.websiteUrl,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15.h),
      ],
    );
  }

  Future<void> copyData(
    BuildContext context, {
    required String data,
  }) async {
    Clipboard.setData(ClipboardData(text: data));
    SnackbarAlert.showSuccess(
      context: context,
      message: LocaleKeys.copied.tr(),
    );
  }
}
