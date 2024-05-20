import 'dart:io';
import 'package:eticket/common/extensions/extensions.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/presentation/screens/pin_code/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PinCodeInput extends HookWidget {
  final Function(int value) onNumberPress;
  final Function() onRightButtonPress;
  final Function()? onLeftButtonPress;

  const PinCodeInput({
    required this.onNumberPress,
    required this.onRightButtonPress,
    this.onLeftButtonPress,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final leftButton = _buildLeftButton(context);

    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      mainAxisSpacing: 4.h,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ...List.generate(9, (i) {
          final value = i + 1;

          return PinCodeButton(
            label: value.toString(),
            onPress: () => onNumberPress(value),
          );
        }),
        leftButton,
        PinCodeButton(
          label: '0',
          onPress: () => onNumberPress(0),
        ),
        PinCodeButton(
          label: '',
          onPress: onRightButtonPress,
          svg: Assets.svgs.deleteLeft.svg(
            height: 30.w,
            width: 30.w,
            color: context.colorScheme.onSurface,
          ),
        ),
      ],
    );
  }

  Widget _buildLeftButton(BuildContext context) {
    if (onLeftButtonPress == null) {
      return const SizedBox.shrink();
    }

    if (Platform.isIOS) {
      return PinCodeButton(
        label: '',
        svg: Assets.svgs.faceId.svg(
          height: 30.w,
          width: 30.w,
          color: context.colorScheme.onSurface,
        ),
        onPress: onLeftButtonPress,
      );
    }

    if (Platform.isAndroid) {
      return PinCodeButton(
        label: '',
        svg: Assets.svgs.touchId.svg(
          height: 30.w,
          width: 30.w,
          color: context.colorScheme.onSurface,
        ),
        onPress: onLeftButtonPress,
      );
    }

    return const SizedBox.shrink();
  }
}
