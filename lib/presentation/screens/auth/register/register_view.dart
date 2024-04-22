import 'package:common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/screens/auth/register/bloc/register_cubit.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/auth_logo.dart';
import 'package:eticket/presentation/widgets/buttons/buttons.dart';
import 'package:eticket/presentation/widgets/forms/forms.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

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
    final offerPolicyS = useState(false);

    return SafeArea(
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                SizedBox(height: 30.h),
                const Hero(
                  tag: HeroConstants.appLogoImageTag,
                  child: AuthLogo(),
                ),
                SizedBox(height: 30.h),
                EmailFormFieldZ(
                  controller: emailController,
                  validate: true,
                ),
                SizedBox(height: 10.h),
                TextFormFieldZ(
                  controller: firstNameController,
                  checkForNullEmpty: true,
                  label: LocaleKeys.first_name.tr(),
                  textCapitalization: TextCapitalization.words,
                ),
                SizedBox(height: 10.h),
                TextFormFieldZ(
                  controller: lastNameController,
                  checkForNullEmpty: true,
                  label: LocaleKeys.surname.tr(),
                  textCapitalization: TextCapitalization.words,
                ),
                SizedBox(height: 10.h),
                TextFormFieldZ(
                  controller: middleNameController,
                  checkForNullEmpty: true,
                  label: LocaleKeys.middle_name.tr(),
                  textCapitalization: TextCapitalization.words,
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
                SizedBox(height: 10.h),
                CheckboxListTile(
                  value: offerPolicyS.value,
                  controlAffinity: ListTileControlAffinity.leading,
                  title: ExcludeSemantics(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '${LocaleKeys.offer_policy_begin.tr()} ',
                          ),
                          TextSpan(
                            text: LocaleKeys.private_policy.tr(),
                            style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                launchUrl(
                                  Uri.parse(context.appConfigs.privacyPolicyUrl),
                                );
                              },
                          ),
                          TextSpan(
                            text: ' ${LocaleKeys.offer_policy_middle.tr()} ',
                          ),
                          TextSpan(
                              text: LocaleKeys.oferta.tr(),
                              style: const TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  launchUrl(
                                      Uri.parse(context.appConfigs.offerUrl));
                                }),
                          TextSpan(
                            text: ' ${LocaleKeys.offer_policy_end.tr()}',
                          ),
                        ],
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    if (value == null) return;

                    offerPolicyS.value = value;
                  },
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ErrorFFZ(
                    validator: () {
                      if (!offerPolicyS.value) {
                        return LocaleKeys.check_agreement.tr();
                      }

                      return null;
                    },
                  ),
                ),
                SizedBox(height: 25.h),
                PrimaryButton(
                  title: LocaleKeys.confirm.tr(),
                  onPressed: () {
                    primaryFocus?.unfocus();

                    if (formKey.currentState?.validate() ?? false) {
                      context.read<RegisterCubit>().register(
                            registerCommandDto: RegisterUserCommandDto(
                              email: emailController.text,
                              firstName: firstNameController.text,
                              lastName: lastNameController.text,
                              middleName: middleNameController.text,
                              password: passwordController.text,
                              phoneNumber: PhoneFormatters.unMaskPhoneNumber(
                                phoneNumberController.text,
                              ),
                            ),
                          );
                    }
                  },
                ),
                SizedBox(height: 15.h),
                TertiaryButton(
                  title: LocaleKeys.login.tr(),
                  onPressed: () {
                    context.replaceRoute(const LoginRoute());
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
