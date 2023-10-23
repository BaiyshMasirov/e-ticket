import 'package:authentication/authentication.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/widgets/forms/forms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

//TODO: HERE TEST DATA WITH TEST CODE
class RegisterView extends HookWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  RegisterView({
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

    return SafeArea(
      child: Form(
        key: formKey,
        child: ListView(
          children: [
            EmailFormFieldZ(
              controller: emailController,
              validate: true,
            ),
            SizedBox(height: 10.h),
            TextFormFieldZ(
              controller: firstNameController,
              checkForNullEmpty: true,
              label: 'First name',
            ),
            SizedBox(height: 10.h),
            TextFormFieldZ(
              controller: lastNameController,
              checkForNullEmpty: true,
              label: 'Last name',
            ),
            SizedBox(height: 10.h),
            TextFormFieldZ(
              controller: middleNameController,
              checkForNullEmpty: true,
              label: 'Midlle name',
            ),
            SizedBox(height: 10.h),
            PasswordFormFieldZ(
              controller: passwordController,
              checkForNullEmpty: true,
            ),
            SizedBox(height: 10.h),
            PhoneFormFieldZ(
              controller: phoneNumberController,
              validate: true,
            ),
            SizedBox(height: 25.h),
            ElevatedButton(
              onPressed: () async {
                if (formKey.currentState?.validate() ?? false) {
                  final phoneNumber = phoneNumberController.text
                      .replaceAll(RegExp(r'[^0-9]'), '');
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
                }
              },
              child: Text('CONFIRM'),
            ),
          ],
        ),
      ),
    );
  }
}
