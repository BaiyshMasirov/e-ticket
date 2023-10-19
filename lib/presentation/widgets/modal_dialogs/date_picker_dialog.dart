import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart' as material;

abstract class DatePicker {
  DatePicker();

  Future<DateTime?> showDatePicker({
    required BuildContext context,
    DateTime? initialValue,
  });

  factory DatePicker.buildPicker() {
    if (Platform.isIOS) {
      return IOSDatePicker();
    }
    if (Platform.isAndroid) {
      return AndroidDatePicker();
    }

    throw UnimplementedError();
  }
}

class IOSDatePicker extends DatePicker {
  @override
  Future<DateTime?> showDatePicker({
    required BuildContext context,
    DateTime? initialValue,
  }) async {
    DateTime? pickedTime = DateTime.now();

    return await showCupertinoModalPopup<DateTime?>(
      context: context,
      builder: (_) => Container(
        height: 500,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                minimumDate: DateTime(1900),
                initialDateTime: initialValue ?? pickedTime,
                maximumDate: pickedTime,
                onDateTimeChanged: (val) {
                  pickedTime = val;
                },
              ),
            ),
            CupertinoButton(
              child: const Text('OK'),
              onPressed: () {
                context.router.pop<DateTime?>(pickedTime);
              },
            )
          ],
        ),
      ),
    );
  }
}

class AndroidDatePicker extends DatePicker {
  @override
  Future<DateTime?> showDatePicker({
    required BuildContext context,
    DateTime? initialValue,
  }) async {
    return await material.showDatePicker(
      context: context,
      initialDate: initialValue ?? DateTime.now(),
      initialEntryMode: material.DatePickerEntryMode.calendarOnly,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
  }
}
