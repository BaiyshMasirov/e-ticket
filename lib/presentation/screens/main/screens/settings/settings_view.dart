import 'package:authentication/authentication.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/widgets/buttons/tertiary_button.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TertiaryButton(
          title: LocaleKeys.exit.tr(),
          onPressed: () {
            context.read<AuthCubit>().signOut();
          },
        ),
      ),
    );
  }
}
