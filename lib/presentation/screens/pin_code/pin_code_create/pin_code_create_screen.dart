import 'package:auto_route/annotations.dart';
import 'package:eticket/presentation/screens/pin_code/pin_code_create/bloc/bloc.dart';
import 'package:eticket/presentation/screens/pin_code/pin_code_create/pin_code_create_v.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class PinCodeCreateScreen extends StatelessWidget {
  final Function() onBackPressed;
  final Function() navigateOnPinCodeCreate;

  const PinCodeCreateScreen({
    required this.onBackPressed,
    required this.navigateOnPinCodeCreate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PinCodeCreateCubit.initialize(),
      child: AppScaffold(
        body: PinCodeCreateV(
          onBackPressed: onBackPressed,
          navigateOnPinCodeCreate: navigateOnPinCodeCreate,
        ),
      ),
    );
  }
}
