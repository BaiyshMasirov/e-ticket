import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/main/screens/settings/change_password/bloc/change_password_cubit.dart';
import 'package:eticket/presentation/screens/main/screens/settings/change_password/change_password_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangePasswordCubit.initialize(),
      child: AppScaffold(
        title: LocaleKeys.change_password.tr(),
        isLoadingFunc: (context) => context.select<ChangePasswordCubit, bool>(
          (value) => value.state is ChangePasswordLoading,
        ),
        body: ChangePasswordView(),
      ),
    );
  }
}
