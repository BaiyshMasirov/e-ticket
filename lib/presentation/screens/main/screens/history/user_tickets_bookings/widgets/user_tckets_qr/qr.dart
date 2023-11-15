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
      clipBehavior: Clip.none,
      actionsAlignment: MainAxisAlignment.center,
      title: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            child: QrImageView(
              backgroundColor: Colors.transparent,
              data: widget.qrCode,
              gapless: true,
              embeddedImageStyle: const QrEmbeddedImageStyle(
                size: Size(
                  50,
                  50,
                ),
              ),
            ),
          ),
        ],
      ),
      actions: <Widget>[
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
