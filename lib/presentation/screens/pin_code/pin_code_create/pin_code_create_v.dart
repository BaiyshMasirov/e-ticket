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
    final pinCode = useState('');

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
              PinCodeTitle(title: LocaleKeys.create_pin_code.tr()),
              PinCodeDots(enteredDigitsCount: pinCode.value.length),
              SizedBox(height: 24.h),
              PinCodeInput(
                onNumberPress: (value) {
                  if (pinCode.value.length == Constants.pinCodeMaxDigitsCount) {
                    return;
                  }

                  pinCode.value = pinCode.value + value.toString();

                  if (pinCode.value.length == Constants.pinCodeMaxDigitsCount) {
                    context
                        .read<PinCodeCreateCubit>()
                        .savePinCode(pinCode: pinCode.value);
                  }
                },
                onRightButtonPress: () {
                  if (pinCode.value.isEmpty) return;

                  pinCode.value = pinCode.value.substring(
                    0,
                    pinCode.value.length - 1,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
