import 'package:auto_route/auto_route.dart';
import 'package:eticket/auth/authentication.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/widgets/alerts/alerts.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

@RoutePage()
class SplashScreen extends HookWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        context.read<AuthCubit>().checkAndUpdateAuthStatus();
        return null;
      },
    );
    return const AppScaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
