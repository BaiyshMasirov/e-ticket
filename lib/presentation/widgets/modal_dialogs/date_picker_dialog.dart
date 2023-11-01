import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:eticket/common/common.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart' as material;

final _defaultMinimumDate = DateTime(2023);

abstract class DatePicker {
  DatePicker();

  Future<DateTime?> showDatePicker({
    required BuildContext context,
    DateTime? initialValue,
    DateTime? maximumDate,
    DateTime? minimumDate,
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
    DateTime? maximumDate,
    DateTime? minimumDate,
  }) async {
    DateTime? pickedTime = DateTime.now();

    return await showCupertinoModalPopup<DateTime?>(
      context: context,
      builder: (_) => Container(
        height: 500,
        color: context.colorScheme.surface,
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: CupertinoDatePicker(
                backgroundColor: context.colorScheme.surface,
                mode: CupertinoDatePickerMode.date,
                minimumDate: minimumDate ?? _defaultMinimumDate,
                initialDateTime: initialValue ?? pickedTime,
                maximumDate: maximumDate ?? initialValue ?? DateTime.now(),
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
    DateTime? maximumDate,
    DateTime? minimumDate,
  }) async {
    return await material.showDatePicker(
      context: context,
      initialDate: initialValue ?? DateTime.now(),
      initialEntryMode: material.DatePickerEntryMode.calendarOnly,
      firstDate: minimumDate ?? _defaultMinimumDate,
      lastDate: maximumDate ?? initialValue ?? DateTime.now(),
    );
  }
}
