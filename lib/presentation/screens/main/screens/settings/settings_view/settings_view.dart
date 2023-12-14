import 'package:authentication/authentication.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/app_blocs/settings/settings_cubit.dart';
import 'package:eticket/presentation/app_blocs/settings/settings_state.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

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
                  label: LocaleKeys.ops.tr(),
                ),
                SettingsButton(
                  label: LocaleKeys.ops.tr(),
                ),
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
            SizedBox(height: kDefaultPadding),
            Visibility(
              visible: s.isUserAdmin,
              child: PrimaryButton(
                title: LocaleKeys.to_scan_tickets.tr(),
                icon: const Icon(Icons.qr_code),
                onPressed: () {
                  context.navigateTo(
                    const ScanTicketRoute(),
                  );
                },
              ),
            ),
            Spacer(),
            TertiaryButton(
              title: LocaleKeys.logout.tr(),
              onPressed: context.read<AuthCubit>().signOut,
            ),
          ],
        ),
      ),
    );
  }
}
