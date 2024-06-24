import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/app_blocs/email_code_timer/email_code_timer.dart';
import 'package:eticket/presentation/screens/auth/account_recover/bloc/bloc.dart';
import 'package:eticket/presentation/widgets/timer/email_code_timer_v.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eticket/presentation/widgets/widgets.dart';

class AccountRecoverV extends HookWidget {
  const AccountRecoverV._({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final useEmailTC = useTextEditingController();
    final useCodeTC = useTextEditingController();
    final usePasswordTC = useTextEditingController();
    final usePasswordConfirmTC = useTextEditingController();

    final formEmailKey = useMemoized(
      () => GlobalKey<FormState>(),
      const [],
    );
    final formRecoverKey = useMemoized(
      () => GlobalKey<FormState>(),
      const [],
    );

    return SingleChildScrollView(
      child: Container(
        margin:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        padding: EdgeInsets.all(kDefaultPadding),
        child: BlocConsumer<AccountRecoverCubit, AccountRecoverState>(
          listener: (_, s) {},
          builder: (_, s) {
            final enableEmail = s.maybeMap(
              orElse: () => false,
              initial: (_) => true,
            );

            final enabledOtherFields = !enableEmail;

            return BlocBuilder<EmailCodeTimerCubit, EmailCodeTimerState>(
              builder: (_, timerState) => Loader(
                isLoadingFunc: (_) => s.maybeMap(
                  orElse: () => false,
                  loading: (_) => true,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          LocaleKeys.recover_password.tr(),
                          style: TextStyle(fontSize: 16.sp),
                        ),
                        IconButton(
                          onPressed: () => context.maybePop(),
                          icon: const Icon(Icons.close),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Form(
                      key: formEmailKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          EmailFormFieldZ(
                            controller: useEmailTC,
                            readOnly: !enableEmail,
                            enabled: enableEmail,
                          ),
                          Visibility(
                            visible: enableEmail,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                EmailCodeTimerV(topPadding: 8.h),
                                SizedBox(height: 8.h),
                                PrimaryButton(
                                  title: LocaleKeys.confirm.tr(),
                                  onPressed: timerState.maybeMap(
                                    orElse: () => () {
                                      if (formEmailKey.currentState
                                              ?.validate() ??
                                          false) {
                                        primaryFocus?.unfocus();

                                        context
                                            .read<EmailCodeTimerCubit>()
                                            .startTimer();

                                        context
                                            .read<AccountRecoverCubit>()
                                            .sendRecoverCode(
                                              email: useEmailTC.text,
                                            );
                                      }
                                    },
                                    runInProgress: (_) => null,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Form(
                      key: formRecoverKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormFieldZ(
                            readonly: !enabledOtherFields,
                            enabled: enabledOtherFields,
                            controller: useCodeTC,
                            textInputType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(
                                Constants.confirmationCodeMaxDigitsCount,
                              ),
                            ],
                            label: LocaleKeys.confirmation_code.tr(),
                            validate: (value) {
                              if (value == null || value.isEmpty) {
                                return LocaleKeys.fillEmptyField.tr();
                              }

                              if (value.length <
                                  Constants.confirmationCodeMaxDigitsCount) {
                                return LocaleKeys
                                    .confirm_code_must_contain_at_least
                                    .plural(Constants
                                        .confirmationCodeMaxDigitsCount);
                              }

                              return null;
                            },
                          ),
                          Visibility(
                            visible: enabledOtherFields,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 4.h),
                                EmailCodeTimerV(topPadding: 0.h),
                                TextButton(
                                  onPressed: timerState.maybeMap(
                                    orElse: () => () {
                                      primaryFocus?.unfocus();

                                      context
                                          .read<EmailCodeTimerCubit>()
                                          .startTimer();

                                      context
                                          .read<AccountRecoverCubit>()
                                          .sendRecoverCode(
                                            email: useEmailTC.text,
                                          );
                                    },
                                    runInProgress: (_) => null,
                                  ),
                                  child: Text(
                                    LocaleKeys.send_recovery_code_again.tr(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 4.h),
                          PasswordFormFieldZ(
                            readonly: !enabledOtherFields,
                            enabled: enabledOtherFields,
                            controller: usePasswordTC,
                          ),
                          SizedBox(height: 8.h),
                          PasswordFormFieldZ(
                            label: LocaleKeys.password_confirm.tr(),
                            readonly: !enabledOtherFields,
                            enabled: enabledOtherFields,
                            controller: usePasswordConfirmTC,
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
                          SizedBox(height: 8.h),
                          s.maybeMap(
                            orElse: () => const SizedBox.shrink(),
                            recoverError: (f) => Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    f.errorMessage ??
                                        LocaleKeys.unknown_error.tr(),
                                    style: TextStyle(
                                      color: context.colorScheme.error,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                ],
                              ),
                            ),
                          ),
                          Visibility(
                            visible: enabledOtherFields,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                PrimaryButton(
                                  title: LocaleKeys.confirm.tr(),
                                  onPressed: () {
                                    if (formRecoverKey.currentState
                                            ?.validate() ??
                                        false) {
                                      primaryFocus?.unfocus();

                                      context
                                          .read<AccountRecoverCubit>()
                                          .recoverAccount(
                                            email: useEmailTC.text,
                                            code: useCodeTC.text,
                                            password: usePasswordTC.text,
                                            passwordConfirm:
                                                usePasswordConfirmTC.text,
                                          );
                                    }
                                  },
                                ),
                                SizedBox(height: 8.h),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  static Future<void> showBS(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      isDismissible: false,
      enableDrag: false,
      isScrollControlled: true,
      builder: (_) => BlocProvider(
        create: (_) => AccountRecoverCubit.initialize(),
        child: const AccountRecoverV._(),
      ),
    );
  }
}
