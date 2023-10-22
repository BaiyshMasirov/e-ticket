import 'package:auto_route/auto_route.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilledButton(
          onPressed: () {
            context.replaceRoute(const RegisterRoute());
          },
          child: Text('REGISTRATION'),
        ),
      ],
    );
  }
}
