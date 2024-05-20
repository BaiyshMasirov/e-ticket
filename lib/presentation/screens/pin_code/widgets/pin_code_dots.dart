import 'package:eticket/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final _enteredDotSize = 13.w;
final _defaultDotSize = 20.w;

class PinCodeDots extends StatelessWidget {
  final int enteredDigitsCount;

  const PinCodeDots({
    required this.enteredDigitsCount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _defaultDotSize,
      child: Center(
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final isEntered = index < enteredDigitsCount;
            final dotSize = isEntered ? _enteredDotSize : _defaultDotSize;

            final color =
                isEntered ? context.colorScheme.primary : Colors.transparent;

            final borderColor =
                isEntered ? Colors.transparent : context.colorScheme.outline;

            return SizedBox(
              width: _defaultDotSize,
              height: _defaultDotSize,
              child: Center(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  width: dotSize,
                  height: dotSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                    border: Border.all(color: borderColor, width: 1.w),
                    color: color,
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (_, i) => SizedBox(width: 18.w),
          itemCount: Constants.maxDigitsCount,
        ),
      ),
    );
  }
}
