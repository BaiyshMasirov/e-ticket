import 'dart:io';

import 'package:eticket/common/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBackButton extends StatelessWidget {
  final Function() onTapped;

  const AppBackButton({
    required this.onTapped,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconData = Platform.isIOS ? CupertinoIcons.back : Icons.arrow_back;

    return IconButton(
      onPressed: onTapped,
      icon: Icon(
        iconData,
        size: 30.w,
        color: context.colorScheme.onSurface,
      ),
    );
  }
}
