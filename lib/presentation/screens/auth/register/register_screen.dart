import 'package:auto_route/auto_route.dart';
import 'package:eticket/presentation/screens/auth/register/register_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      // isLoadingFunc: (context) {
      //   return true;
      // },
      body: SafeArea(
        child: RegisterView(),
      ),
    );
  }
}
