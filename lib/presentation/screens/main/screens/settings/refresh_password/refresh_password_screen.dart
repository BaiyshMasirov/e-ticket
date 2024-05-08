import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/main/screens/settings/refresh_password/bloc/refresh_password_cubit.dart';
import 'package:eticket/presentation/screens/main/screens/settings/refresh_password/refresh_password_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class RefreshPasswordScreen extends StatelessWidget {
  const RefreshPasswordScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RefreshPasswordCubit.initialize(),
      child: AppScaffold(
        title: LocaleKeys.change_password.tr(),
        isLoadingFunc: (context) => context.select<RefreshPasswordCubit, bool>(
          (value) => value.state is RefreshPasswordLoading,
        ),
        body: RefreshPasswordView(),
      ),
    );
  }
}
