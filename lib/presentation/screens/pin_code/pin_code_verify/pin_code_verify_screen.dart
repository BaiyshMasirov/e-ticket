import 'package:auto_route/annotations.dart';
import 'package:eticket/presentation/screens/pin_code/pin_code_verify/bloc/pin_code_verify_cubit.dart';
import 'package:eticket/presentation/screens/pin_code/pin_code_verify/pin_code_verity_v.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class PinCodeVerifyScreen extends StatelessWidget {
  final Function() onBackPressed;
  final Function() navigateOnPinCodeCreate;

  const PinCodeVerifyScreen({
    required this.onBackPressed,
    required this.navigateOnPinCodeCreate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PinCodeVerifyCubit.initialize(),
      child: AppScaffold(
        isLoadingFunc: (context) => context.select<PinCodeVerifyCubit, bool>(
          (c) => c.state.maybeMap(
            orElse: () => false,
            loading: (_) => true,
          ),
        ),
        body: PinCodeVerifyV(
          onBackPressed: onBackPressed,
          navigateOnPinCodeCreate: navigateOnPinCodeCreate,
        ),
      ),
    );
  }
}
