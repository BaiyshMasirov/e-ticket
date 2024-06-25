import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/pin_code/pin_code_create/bloc/bloc.dart';
import 'package:eticket/presentation/screens/pin_code/widgets/widgets.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PinCodeCreateV extends HookWidget {
  final Function() onBackPressed;
  final Function() navigateOnPinCodeCreate;

  const PinCodeCreateV({
    required this.onBackPressed,
    required this.navigateOnPinCodeCreate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usePinCode = useState('');
    final usePinCodeConfirm = useState('');

    final usePinCodeConfirming = useState(false);
    final usePinCodeConfirmError = useState('');

    return BlocListener<PinCodeCreateCubit, PinCodeCreateState>(
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
              PinCodeTitle(
                  title: usePinCodeConfirming.value
                      ? LocaleKeys.confirm_pin_code.tr()
                      : LocaleKeys.create_pin_code.tr()),
              PinCodeDots(
                enteredDigitsCount: usePinCodeConfirming.value
                    ? usePinCodeConfirm.value.length
                    : usePinCode.value.length,
              ),
              SizedBox(height: 8.h),
              SizedBox(
                height: 20.h,
                child: Text(
                  usePinCodeConfirmError.value,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: context.colorScheme.errorContainer,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              PinCodeInput(
                onNumberPress: (value) {
                  if (usePinCodeConfirming.value) {
                    if (usePinCodeConfirm.value.length ==
                        Constants.pinCodeMaxDigitsCount) {
                      return;
                    }

                    usePinCodeConfirm.value =
                        usePinCodeConfirm.value + value.toString();

                    if (usePinCodeConfirm.value.length ==
                        Constants.pinCodeMaxDigitsCount) {
                      if (usePinCodeConfirm.value == usePinCode.value) {
                        context
                            .read<PinCodeCreateCubit>()
                            .savePinCode(pinCode: usePinCodeConfirm.value);
                      } else {
                        usePinCodeConfirmError.value =
                            LocaleKeys.pin_code_does_not_match.tr();
                      }
                    } else {
                      usePinCodeConfirmError.value = '';
                    }
                  } else {
                    if (usePinCode.value.length ==
                        Constants.pinCodeMaxDigitsCount) {
                      return;
                    }

                    usePinCode.value = usePinCode.value + value.toString();

                    if (usePinCode.value.length ==
                        Constants.pinCodeMaxDigitsCount) {
                      usePinCodeConfirming.value = true;
                    }
                  }
                },
                onRightButtonPress: () {
                  usePinCodeConfirmError.value = '';

                  if (usePinCodeConfirming.value) {
                    if (usePinCodeConfirm.value.isEmpty) return;

                    usePinCodeConfirm.value = usePinCodeConfirm.value.substring(
                      0,
                      usePinCodeConfirm.value.length - 1,
                    );
                  } else {
                    if (usePinCode.value.isEmpty) return;

                    usePinCode.value = usePinCode.value.substring(
                      0,
                      usePinCode.value.length - 1,
                    );
                  }
                },
              ),
              SizedBox(height: 12.h),
              TextButton(
                onPressed: usePinCodeConfirming.value
                    ? () {
                        usePinCodeConfirm.value = '';
                        usePinCode.value = '';
                        usePinCodeConfirming.value = false;
                        usePinCodeConfirmError.value = '';
                      }
                    : null,
                child: Text(LocaleKeys.back.tr()),
              ),
              SizedBox(height: 12.h),
            ],
          ),
        ),
      ),
    );
  }
}
