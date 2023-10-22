import 'package:authentication/authentication.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/widgets/forms/forms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

//TODO: HERE TEST DATA WITH TEST CODE
class RegisterView extends HookWidget {
  const RegisterView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();
    final middleNameController = useTextEditingController();
    final passwordController = useTextEditingController();
    final phoneNumberController = useTextEditingController();

    return Column(
      children: [
        Card(
          child: Column(
            children: [
              EmailFormFieldZ(
                controller: emailController,
                validate: true,
              ),
              TextFormFieldZ(
                controller: firstNameController,
                checkForNullEmpty: true,
                label: 'FIRST NAME',
              ),
              TextFormFieldZ(
                controller: lastNameController,
                checkForNullEmpty: true,
                label: 'LAST NAME',
              ),
              TextFormFieldZ(
                controller: middleNameController,
                checkForNullEmpty: true,
                label: 'MIDDLE NAME',
              ),
              PasswordFormFieldZ(
                controller: passwordController,
                checkForNullEmpty: true,
              ),
              PhoneFormFieldZ(
                controller: phoneNumberController,
                validate: true,
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () async {
            final phoneNumber =
                phoneNumberController.text.replaceAll(RegExp(r'[^0-9]'), '');
            print(phoneNumber);
            final result = await GetIt.I
                .get<AccountRepository>()
                .register(RegisterUserCommandDto(
                  email: emailController.text,
                  firstName: firstNameController.text,
                  lastName: lastNameController.text,
                  middleName: middleNameController.text,
                  password: passwordController.text,
                  phoneNumber: phoneNumber,
                ));
            result.fold(
              (l) => print(l.errorMessage?.tr()),
              (r) => GetIt.I.get<AuthCubit>().setToken(
                    credentials: r,
                  ),
            );
            print('sdf');
          },
          child: Text('CONFIRM'),
        ),
      ],
    );
  }
}
