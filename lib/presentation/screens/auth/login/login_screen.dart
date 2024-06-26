import 'package:auto_route/auto_route.dart';
import 'package:eticket/presentation/screens/auth/account_confirm/bloc/bloc.dart';
import 'package:eticket/presentation/screens/auth/login/bloc/login_cubit.dart';
import 'package:eticket/presentation/screens/auth/login/login_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => LoginCubit.initialize(),
        ),
        BlocProvider(
          create: (_) => AccountConfirmCubit.initialize(),
        ),
      ],
      child: AppScaffold(
        isLoadingFunc: (context) => context.select<LoginCubit, bool>(
          (value) => value.state is LoginLoading,
        ),
        body: LoginView(),
      ),
    );
  }
}
