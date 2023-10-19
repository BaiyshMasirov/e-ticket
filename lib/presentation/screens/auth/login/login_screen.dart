import 'package:auto_route/auto_route.dart';
import 'package:eticket/presentation/screens/auth/login/login_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoginView();
  }
}
