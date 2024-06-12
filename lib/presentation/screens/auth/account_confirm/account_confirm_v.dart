import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/auth/account_confirm/bloc/bloc.dart';
import 'package:eticket/presentation/widgets/forms/forms.dart';
import 'package:flutter/material.dart';
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

    return Form(
      key: formKey,
      child: Column(
        children: [
          EmailFormFieldZ(
            controller: useEmailTC,
            readOnly: true,
          ),
          SizedBox(height: 8.h),
          TextFormFieldZ(
            controller: useCodeTC,
            textInputType: TextInputType.number,
            label: LocaleKeys.confirmation_code.tr(),
            validate: (value) {
              if (value == null || value.isEmpty) {
                return LocaleKeys.fillEmptyField.tr();
              }

              if (value.length < Constants.confirmationCodeMaxDigitsCount) {
                return LocaleKeys.confirm_code_must_contain_at_least
                    .plural(Constants.confirmationCodeMaxDigitsCount);
              }

              return null;
            },
          ),
        ],
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
