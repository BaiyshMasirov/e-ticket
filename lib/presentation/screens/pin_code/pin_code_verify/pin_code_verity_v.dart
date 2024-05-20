import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/auth/authentication.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/pin_code/pin_code_verify/bloc/bloc.dart';
import 'package:eticket/presentation/screens/pin_code/widgets/widgets.dart';
import 'package:eticket/presentation/widgets/modal_dialogs/modal_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PinCodeVerifyV extends HookWidget {
  final Function() onBackPressed;
  final Function() navigateOnPinCodeCreate;

  const PinCodeVerifyV({
    required this.onBackPressed,
    required this.navigateOnPinCodeCreate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pinCode = useState('');

    return BlocListener<PinCodeVerifyCubit, PinCodeVerifyState>(
      listener: (_, s) => s.maybeMap(
        orElse: () => null,
        success: (_) => navigateOnPinCodeCreate(),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PinCodeTitle(title: LocaleKeys.enter_pin_code.tr()),
              PinCodeDots(enteredDigitsCount: pinCode.value.length),
              SizedBox(height: 24.h),
              PinCodeInput(
                onNumberPress: (value) {
                  if (pinCode.value.length == Constants.maxDigitsCount) {
                    return;
                  }

                  pinCode.value = pinCode.value + value.toString();

                  if (pinCode.value.length == Constants.maxDigitsCount) {
                    context
                        .read<PinCodeVerifyCubit>()
                        .verifyPinCode(enteredPinCode: pinCode.value);
                  }
                },
                onLeftButtonPress: context
                    .read<PinCodeVerifyCubit>()
                    .tryAuthenticateWithBiometric,
                onRightButtonPress: () {
                  if (pinCode.value.isEmpty) return;

                  pinCode.value = pinCode.value.substring(
                    0,
                    pinCode.value.length - 1,
                  );
                },
              ),
              SizedBox(height: 12.h),
              TextButton(
                onPressed: () => YesNoDialog.showModal(
                  context: context,
                  title: LocaleKeys
                      .are_you_sure_you_want_to_logout_form_application
                      .tr(),
                  onNoPress: () => context.popRoute(),
                  onYesPress: context.read<AuthCubit>().signOut,
                ),
                child: Text(LocaleKeys.dont_remember_pin_code.tr()),
              ),
              SizedBox(height: 12.h),
            ],
          ),
        ),
      ),
    );
  }
}
