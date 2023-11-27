import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScanTicketDialog extends StatelessWidget {
  final Function() onClose;
  final String text;
  final bool isError;

  const ScanTicketDialog._({
    required this.text,
    required this.isError,
    required this.onClose,
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
            text,
            style: TextStyle(
              fontSize: 20.sp,
              color: isError ? context.colorScheme.error : null,
            ),
          ),
          SizedBox(height: kDefaultPadding),
          PrimaryButton(
            title: LocaleKeys.confirm.tr(),
            onPressed: onClose,
          ),
        ],
      ),
    );
  }

  static Future<void> showHoldTicketDialog({
    required String text,
    required bool isError,
    required BuildContext context,
    required Function() onClose,
  }) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Dialog(
        child: ScanTicketDialog._(
          text: text,
          isError: isError,
          onClose: onClose,
        ),
      ),
    );
  }
}
