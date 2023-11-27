import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:flutter/material.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentOption extends StatelessWidget {
  final PaymentType type;
  final Function(PaymentType type) onSelected;

  const PaymentOption({
    required this.type,
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: defaultBr,
        border: Border.all(color: context.colorScheme.outline),
        color: context.appColors.container,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: defaultBr,
          onTap: () => onSelected(type),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              borderRadius: defaultBr,
              border: Border.all(color: context.colorScheme.outline),
            ),
            child: Row(
              children: [
                Image.asset(
                  type.getImagePath,
                  width: context.screenSize.screenWidth / 4,
                ),
                SizedBox(width: 10.w),
                Text(
                  type.name.toLowerCase().tr(),
                  style: TextStyle(
                    color: context.appColors.onContainer,
                  ),
                ),
                const Spacer(),
                const Icon(Icons.chevron_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
