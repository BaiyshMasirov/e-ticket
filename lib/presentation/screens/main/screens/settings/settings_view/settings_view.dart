import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/auth/authentication.dart';
import 'package:eticket/common/extensions/extensions.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/app_blocs/settings/settings_cubit.dart';
import 'package:eticket/presentation/app_blocs/settings/settings_state.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/screens/main/screens/settings/bloc/account_delete_cubit.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (_, s) => Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            SettingsContainer(
              children: [
                SettingsButton(
                  onPress: () {
                    context.navigateTo(const RefreshPasswordRoute());
                  },
                  label: LocaleKeys.change_password.tr(),
                ),
              ],
            ),
            SizedBox(height: kDefaultPadding),
            SettingsContainer(
              children: [
                SettingsButton(
                  onPress: () {
                    launchUrl(Uri.parse(context.appConfigs.privacyPolicyUrl));
                  },
                  label: LocaleKeys.privacy_policy.tr(),
                ),
                SettingsButton(
                  onPress: () {
                    launchUrl(Uri.parse(context.appConfigs.offerUrl));
                  },
                  label: LocaleKeys.terms_of_use.tr(),
                ),
              ],
            ),
            SizedBox(height: kDefaultPadding),
            SettingsContainer(
              children: [
                SettingsButton(
                  label: LocaleKeys.switch_theme.tr(),
                  icon: Switch(
                    onChanged: (value) {
                      final themeMode =
                          value ? ThemeMode.dark : ThemeMode.light;

                      context.read<SettingsCubit>().setThemeMode(
                            themeMode: themeMode,
                          );
                    },
                    value: s.themeMode == ThemeMode.dark,
                  ),
                  onPress: () {
                    final themeMode = s.themeMode == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;

                    context.read<SettingsCubit>().setThemeMode(
                          themeMode: themeMode,
                        );
                  },
                ),
              ],
            ),
            Visibility(
              visible: s.isUserAdmin,
              child: Column(
                children: [
                  SizedBox(height: kDefaultPadding),
                  PrimaryButton(
                    title: LocaleKeys.to_scan_tickets.tr(),
                    icon: const Icon(Icons.qr_code),
                    onPressed: () =>
                        context.navigateTo(const ScanTicketRoute()),
                  ),
                ],
              ),
            ),
            SizedBox(height: kDefaultPadding),
            SettingsContainer(
              children: [
                SettingsButton(
                  label: LocaleKeys.contact_info.tr(),
                  icon: const SizedBox.shrink(),
                  onPress: () => context.navigateTo(const ContactInfoRoute()),
                ),
              ],
            ),
            SizedBox(height: kDefaultPadding),
            SettingsContainer(
              children: [
                SettingsButton(
                  label: LocaleKeys.delete_account.tr(),
                  labelStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: context.appColors.red,
                  ),
                  icon: const SizedBox.shrink(),
                  onPress: () => YesNoDialog.showModal(
                    context: context,
                    title: LocaleKeys.delete_account_title.tr(),
                    onNoPress: context.popRoute,
                    onYesPress:
                        context.read<AccountDeleteCubit>().deleteAccount,
                  ),
                ),
              ],
            ),
            const Spacer(),
            TertiaryButton(
              title: LocaleKeys.logout.tr(),
              onPressed: () => YesNoDialog.showModal(
                context: context,
                title: LocaleKeys
                    .are_you_sure_you_want_to_logout_form_application
                    .tr(),
                onNoPress: () => context.popRoute(),
                onYesPress: context.read<AuthCubit>().signOut,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
