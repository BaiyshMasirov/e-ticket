import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HoldTicketDialog extends StatelessWidget {
  final Function() onCancel;
  final Function() onConfirm;

  const HoldTicketDialog._({
    required this.onCancel,
    required this.onConfirm,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding / 2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            LocaleKeys.hold_ticket_description.tr(),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: kDefaultPadding),
          PrimaryButton(
            title: LocaleKeys.confirm.tr(),
            onPressed: onConfirm,
          ),
          SizedBox(height: 8.h),
          TertiaryButton(
            title: LocaleKeys.cancel.tr(),
            onPressed: onCancel,
          ),
        ],
      ),
    );
  }

  static Future<void> showHoldTicketDialog({
    required BuildContext context,
    required Function() onCancel,
    required Function() onConfirm,
  }) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Dialog(
        child: HoldTicketDialog._(
          onCancel: onCancel,
          onConfirm: onConfirm,
        ),
      ),
    );
  }
}
