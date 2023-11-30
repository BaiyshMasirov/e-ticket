import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/formatters/phone_formatters.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/main/screens/settings/refresh_password/bloc/refresh_password_cubit.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/buttons/primary_button.dart';
import 'package:eticket/presentation/widgets/forms/email_form_field_z.dart';
import 'package:eticket/presentation/widgets/forms/password_form_field_z.dart';
import 'package:eticket/presentation/widgets/forms/phone_form_field_z.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RefreshPasswordView extends HookWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RefreshPasswordView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final phoneNumberController = useTextEditingController();

    return BlocListener<RefreshPasswordCubit, RefreshPasswordState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          success: () {
            context.popRoute();
          },
        );
      },
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                SizedBox(height: 30.h),
                EmailFormFieldZ(
                  controller: emailController,
                  validate: true,
                ),
                SizedBox(height: 10.h),
                PhoneFormFieldZ(
                  controller: phoneNumberController,
                  validate: true,
                ),
                SizedBox(height: 10.h),
                PasswordFormFieldZ(
                  controller: passwordController,
                  checkForNullEmpty: true,
                ),
                SizedBox(height: 10.h),
                PasswordFormFieldZ(
                  controller: confirmPasswordController,
                  label: LocaleKeys.confirm_password.tr(),
                  checkForNullEmpty: true,
                  validate: (validateString) {
                    if (passwordController.text !=
                        confirmPasswordController.text) {
                      return LocaleKeys.password_mismatch.tr();
                    }
                    return null;
                  },
                ),
                SizedBox(height: 25.h),
                PrimaryButton(
                  title: LocaleKeys.confirm.tr(),
                  onPressed: () {
                    primaryFocus?.unfocus();

                    if (formKey.currentState?.validate() ?? false) {
                      context.read<RefreshPasswordCubit>().refreshPassword(
                            refreshPasswordCommandDto:
                                RefreshPasswordCommandDto(
                              email: emailController.text,
                              password: passwordController.text,
                              confirmPassword: confirmPasswordController.text,
                              phoneNumber: PhoneFormatters.unMaskPhoneNumber(
                                phoneNumberController.text,
                              ),
                            ),
                          );
                    }
                  },
                ),
                SizedBox(height: 25.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
