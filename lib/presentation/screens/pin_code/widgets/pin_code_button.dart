import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PinCodeButton extends StatelessWidget {
  final String label;
  final SvgPicture? svg;
  final Color? iconColor;
  final Color? buttonColor;
  final Function()? onPress;
  final double? fontSize;

  const PinCodeButton({
    required this.label,
    required this.onPress,
    this.fontSize,
    this.buttonColor,
    this.svg,
    this.iconColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final child = _buildChild(
      label: label,
      svg: svg,
      context: context,
    );

    return Center(
      child: RoundedButton(
        size: Size(80.w, 80.w),
        backgroundColor: Colors.transparent,
        foregroundColor: context.colorScheme.primary,
        shadowColor: Colors.transparent,
        onPress: onPress,
        child: child,
      ),
    );
  }

  Widget _buildChild({
    required String label,
    required BuildContext context,
    SvgPicture? svg,
  }) {
    if (svg != null) {
      return svg;
    } else {
      return Text(
        label,
        style: TextStyle(
          fontSize: 16.sp,
          color: iconColor ?? context.colorScheme.onSurface,
        ),
      );
    }
  }
}
