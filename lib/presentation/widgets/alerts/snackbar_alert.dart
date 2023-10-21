import 'package:eticket/common/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SnackbarAlert {
  static void showError({
    required BuildContext context,
    required String message,
  }) {
    final snackbar = SnackBar(
      backgroundColor: context.colorScheme.error,
      dismissDirection: DismissDirection.down,
      behavior: SnackBarBehavior.floating,
      content: Row(
        children: [
          const Icon(
            Icons.info_outline,
            color: Colors.white,
          ),
          SizedBox(width: 10.w),
          Expanded(child: Text(message)),
        ],
      ),
    );

    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  static void showSuccess({
    required BuildContext context,
    required String message,
  }) {
    final snackbar = SnackBar(
      backgroundColor: Colors.green,
      dismissDirection: DismissDirection.down,
      behavior: SnackBarBehavior.floating,
      content: Row(
        children: [
          const Icon(
            Icons.check_circle_outlined,
            color: Colors.white,
          ),
          SizedBox(width: 10.w),
          Expanded(child: Text(message)),
        ],
      ),
    );

    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
