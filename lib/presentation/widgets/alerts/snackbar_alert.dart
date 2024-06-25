import 'package:eticket/common/extensions/extensions.dart';
import 'package:eticket/presentation/widgets/alerts/snackbar_alert/snackbar_handler.dart';
import 'package:eticket/presentation/widgets/alerts/snackbar_alert/snackbar_position.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eticket/presentation/theme/theme.dart';

const _snackbarDuration = Duration(seconds: 5);

class SnackbarAlert {
  static void showError({
    required BuildContext context,
    required String message,
  }) {
    SnackbarHandler().showOverlay(
      context,
      position: SnackbarPosition.top,
      snackbarDuration: _snackbarDuration,
      decoration: BoxDecoration(
        border: Border.all(
          color: context.colorScheme.outlineVariant,
        ),
        borderRadius: defaultBr,
        color: context.colorScheme.errorContainer,
      ),
      content: Padding(
        padding: EdgeInsets.all(10.w),
        child: Row(
          children: [
            const Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            SizedBox(width: 10.w),
            Expanded(child: Text(message)),
          ],
        ),
      ),
    );
  }

  static void showSuccess({
    required BuildContext context,
    required String message,
  }) {
    SnackbarHandler().showOverlay(
      context,
      snackbarDuration: _snackbarDuration,
      position: SnackbarPosition.top,
      decoration: BoxDecoration(
        border: Border.all(
          color: context.colorScheme.outlineVariant,
        ),
        borderRadius: defaultBr,
        color: Colors.green,
      ),
      content: Padding(
        padding: EdgeInsets.all(10.w),
        child: Row(
          children: [
            const Icon(
              Icons.check_circle_outlined,
              color: Colors.white,
            ),
            SizedBox(width: 10.w),
            Expanded(child: Text(message)),
          ],
        ),
      ),
    );
  }
}
