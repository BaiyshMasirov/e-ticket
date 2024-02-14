import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

Future<void> showPermissionDialog({
  required BuildContext context,
  required String qr,
}) async {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => AlertDialog(
      title: Text('QR'),
      content: QrImageView(
        data: qr,
        size: 280,
        embeddedImageStyle: const QrEmbeddedImageStyle(
          size: Size(
            100,
            100,
          ),
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            context.popRoute(context);
          },
          child: Text('back'),
        ),
      ],
    ),
  );

  throw UnimplementedError();
}
