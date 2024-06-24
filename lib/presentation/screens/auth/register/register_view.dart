import 'package:eticket/data/data.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/screens/auth/account_confirm/account_confirm_v.dart';
import 'package:eticket/presentation/screens/auth/register/bloc/register_cubit.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/auth_logo.dart';
import 'package:eticket/presentation/widgets/buttons/buttons.dart';
import 'package:eticket/presentation/widgets/forms/forms.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    final useEmailTC = useTextEditingController();
    final useFirstNameTC = useTextEditingController();
    final useLastNameTC = useTextEditingController();
    final useMiddleNameTC = useTextEditingController();
    final usePasswordTC = useTextEditingController();
    final usePasswordConfirmTC = useTextEditingController();
    final usePhoneNumberTC = useTextEditingController();
    final useOfferPolicy = useState(false);

    return BlocListener<RegisterCubit, RegisterState>(
      listener: (_, s) => s.maybeMap(
        orElse: () => null,
        success: (_) => AccountConfirmView.showBS(
          context,
          accountConfirmed: () => null,
          email: _.login,
        ),
      ),
      child: SafeArea(
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
                    controller: useEmailTC,
                    textInputAction: TextInputAction.next,
                    validate: true,
                  ),
                  SizedBox(height: 10.h),
                  TextFormFieldZ(
                    controller: useFirstNameTC,
                    checkForNullEmpty: true,
                    label: LocaleKeys.first_name.tr(),
                    textCapitalization: TextCapitalization.words,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: 10.h),
                  TextFormFieldZ(
                    controller: useLastNameTC,
                    checkForNullEmpty: true,
                    label: LocaleKeys.surname.tr(),
                    textCapitalization: TextCapitalization.words,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: 10.h),
                  TextFormFieldZ(
                    controller: useMiddleNameTC,
                    checkForNullEmpty: true,
                    label: LocaleKeys.middle_name.tr(),
                    textCapitalization: TextCapitalization.words,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: 10.h),
                  PasswordFormFieldZ(
                    controller: usePasswordTC,
                    checkForNullEmpty: true,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: 10.h),
                  PasswordFormFieldZ(
                    label: LocaleKeys.password_confirm.tr(),
                    controller: usePasswordConfirmTC,
                    checkForNullEmpty: true,
                    textInputAction: TextInputAction.next,
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return LocaleKeys.fillEmptyField.tr();
                      }

                      if (value != usePasswordTC.text) {
                        return LocaleKeys.passwords_do_not_match.tr();
                      }

                      return null;
                    },
                  ),
                  SizedBox(height: 10.h),
                  PhoneFormFieldZ(
                    controller: usePhoneNumberTC,
                    validate: true,
                    textInputAction: TextInputAction.done,
                  ),
                  SizedBox(height: 10.h),
                  CheckboxListTile(
                    value: useOfferPolicy.value,
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
                                    Uri.parse(
                                        context.appConfigs.privacyPolicyUrl),
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
                                      Uri.parse(context.appConfigs.offerUrl),
                                    );
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

                      useOfferPolicy.value = value;
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ErrorFFZ(
                      validator: () {
                        if (!useOfferPolicy.value) {
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
                                email: useEmailTC.text,
                                firstName: useFirstNameTC.text,
                                lastName: useLastNameTC.text,
                                middleName: useMiddleNameTC.text,
                                password: usePasswordTC.text,
                                phoneNumber: PhoneFormatters.unMaskPhoneNumber(
                                  usePhoneNumberTC.text,
                                ),
                              ),
                            );
                      }
                    },
                  ),
                  SizedBox(height: 15.h),
                  TextButton(
                    onPressed: () => context.replaceRoute(const LoginRoute()),
                    child: Text(
                      LocaleKeys.login.tr(),
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: context.appColors.blue,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  TextButton(
                    onPressed: () =>
                        context.navigateTo(const ContactInfoRoute()),
                    child: Text(
                      LocaleKeys.contact_info.tr(),
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: context.colorScheme.onSurface,
                      ),
                    ),
                  ),
                  SizedBox(height: 25.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
