import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/main/screens/settings/bloc/account_delete_cubit.dart';
import 'package:eticket/presentation/screens/main/screens/settings/settings_view/settings_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AccountDeleteCubit.initialize(),
      child: AppScaffold(
        title: LocaleKeys.settings.tr(),
        body: const SettingsView(),
      ),
    );
  }
}
