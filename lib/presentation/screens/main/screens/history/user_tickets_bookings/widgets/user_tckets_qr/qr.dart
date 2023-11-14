import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Qr extends StatefulWidget {
  final String qrCode;
  const Qr({
    required this.qrCode,
    Key? key,
  }) : super(key: key);

  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      title: Column(
        children: [],
      ),
      actions: <Widget>[
        QrImageView(
          data: widget.qrCode,
          size: 150,
          embeddedImageStyle: const QrEmbeddedImageStyle(
            size: Size(
              50,
              50,
            ),
          ),
        ),
        TextButton(
          child: Text('back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
