import 'package:authentication/authentication.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/screens/main/screens/settings/bloc/bloc.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/buttons/buttons.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                label: LocaleKeys.ops.tr(),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding),
          Visibility(
            visible: context.select<SettingsCubit, bool>(
              (value) => value.state.isUserAdmin,
            ),
            child: PrimaryButton(
              title: LocaleKeys.to_scan_tickets.tr(),
              icon: const Icon(Icons.qr_code),
              onPressed: () {
                context.navigateTo(ScanTicketRoute());
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
    );
  }
}
