import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/screens/auth/login/bloc/login_cubit.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/auth_logo.dart';
import 'package:eticket/presentation/widgets/buttons/buttons.dart';
import 'package:eticket/presentation/widgets/forms/email_form_field_z.dart';
import 'package:eticket/presentation/widgets/forms/forms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends HookWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoginView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    return SafeArea(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            child: Column(
              children: [
                SizedBox(height: 60.h),
                const Hero(
                  tag: HeroConstants.appLogoImageTag,
                  child: AuthLogo(),
                ),
                SizedBox(height: 60.h),
                EmailFormFieldZ(controller: emailController),
                SizedBox(height: 15.h),
                PasswordFormFieldZ(controller: passwordController),
                SizedBox(height: 15.h),
                PrimaryButton(
                  title: LocaleKeys.login.tr(),
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      context.read<LoginCubit>().login(
                            loginCommandDto: LoginCommandDto(
                              email: emailController.text,
                              password: passwordController.text,
                              firebaseToken: null,
                            ),
                          );
                    }
                  },
                ),
                SizedBox(height: 15.h),
                TertiaryButton(
                  title: LocaleKeys.registration.tr(),
                  onPressed: () => context.replaceRoute(const RegisterRoute()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
