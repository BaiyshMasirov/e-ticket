import 'package:authentication/authentication.dart';
import 'package:common/common.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class BlocWrapper extends StatelessWidget {
  final Widget child;

  const BlocWrapper({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              GetIt.I.get<AuthCubit>()..checkAndUpdateAuthStatus(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<SnackbarCubit>(),
        ),
      ],
      child: child,
    );
  }
}
