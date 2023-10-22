import 'package:auto_route/auto_route.dart';
import 'package:eticket/presentation/screens/auth/register/register_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: RegisterView(),
      ),
    );
  }
}
