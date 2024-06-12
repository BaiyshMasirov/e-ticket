import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/auth/account_confirm/bloc/bloc.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/forms/forms.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:eticket/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountConfirmView extends HookWidget {
  final String email;
  final Function() accountConfirmed;

  const AccountConfirmView._({
    required this.email,
    required this.accountConfirmed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final useEmailTC = useTextEditingController(text: email);
    final useCodeTC = useTextEditingController();

    final formKey = useMemoized(
      () => GlobalKey<FormState>(),
      const [],
    );

    return Container(
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      padding: EdgeInsets.all(kDefaultPadding),
      child: Form(
        key: formKey,
        child: BlocConsumer<AccountConfirmCubit, AccountConfirmState>(
          listener: (_, s) => s.maybeMap(
            orElse: () => null,
            success: (_) => Logger.setUserIdentifier(_.email),
          ),
          builder: (_, s) => Loader(
            isLoadingFunc: (_) => s.maybeMap(
              orElse: () => false,
              loading: (_) => true,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // TODO: code confirm title
                EmailFormFieldZ(
                  controller: useEmailTC,
                  readOnly: true,
                  enabled: false,
                ),
                SizedBox(height: 8.h),
                TextFormFieldZ(
                  controller: useCodeTC,
                  textInputType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                  ],
                  label: LocaleKeys.confirmation_code.tr(),
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return LocaleKeys.fillEmptyField.tr();
                    }

                    if (value.length <
                        Constants.confirmationCodeMaxDigitsCount) {
                      return LocaleKeys.confirm_code_must_contain_at_least
                          .plural(Constants.confirmationCodeMaxDigitsCount);
                    }

                    return null;
                  },
                ),
                SizedBox(height: 8.h),
                s.maybeMap(
                  orElse: () => const SizedBox.shrink(),
                  failure: (f) => Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          f.errorMessage ?? LocaleKeys.unknown_error.tr(),
                          style: TextStyle(
                            color: context.colorScheme.error,
                          ),
                        ),
                        SizedBox(height: 8.h),
                      ],
                    ),
                  ),
                ),
                // TODO: add code resend button
                PrimaryButton(
                  title: LocaleKeys.confirm.tr(),
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      primaryFocus?.unfocus();

                      context.read<AccountConfirmCubit>().confirmAccount(
                            email: email,
                            code: useCodeTC.text,
                          );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Future<void> showBS(
    BuildContext context, {
    required String email,
    required Function() accountConfirmed,
  }) async {
    showModalBottomSheet(
      context: context,
      isDismissible: false,
      builder: (_) => BlocProvider(
        create: (_) => AccountConfirmCubit.initialize(),
        child: AccountConfirmView._(
          email: email,
          accountConfirmed: accountConfirmed,
        ),
      ),
    );
  }
}
