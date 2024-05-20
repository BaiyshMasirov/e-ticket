import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/screens/auth/login/bloc/login_cubit.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/auth_logo.dart';
import 'package:eticket/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eticket/presentation/widgets/widgets.dart';

class LoginView extends HookWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoginView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginTC = useTextEditingController();
    final passwordTC = useTextEditingController();

    return BlocListener<LoginCubit, LoginState>(
      listener: (_, s) => s.maybeMap(
        orElse: () => null,
        success: (_) => Logger.setUserIdentifier(_.login),
      ),
      child: SafeArea(
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
                  EmailFormFieldZ(
                    controller: loginTC,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: 15.h),
                  PasswordFormFieldZ(controller: passwordTC),
                  SizedBox(height: 15.h),
                  PrimaryButton(
                    title: LocaleKeys.login.tr(),
                    onPressed: () {
                      primaryFocus?.unfocus();

                      if (_formKey.currentState?.validate() ?? false) {
                        context.read<LoginCubit>().login(
                              loginCommandDto: LoginCommandDto(
                                email: loginTC.text,
                                password: passwordTC.text,
                                firebaseToken: null,
                              ),
                            );
                      }
                    },
                  ),
                  SizedBox(height: 15.h),
                  TertiaryButton(
                    title: LocaleKeys.registration.tr(),
                    onPressed: () =>
                        context.replaceRoute(const RegisterRoute()),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
