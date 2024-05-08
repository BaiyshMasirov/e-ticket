import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/constants/common_constants.dart';
import 'package:eticket/presentation/app_blocs/settings/settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocalizationWrapper extends StatelessWidget {
  final Widget child;

  const LocalizationWrapper({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: locales,
      path: 'assets/translations',
      startLocale: context.select<SettingsCubit, Locale>(
        (value) => Locale(
          value.state.locale,
        ),
      ),
      fallbackLocale: locales[0],
      child: child,
    );
  }
}
