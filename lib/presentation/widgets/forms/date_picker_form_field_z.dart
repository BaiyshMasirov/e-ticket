import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/widgets/forms/text_form_field_z.dart';
import 'package:eticket/presentation/widgets/modal_dialogs/modal_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DatePickerFormFieldZ extends HookWidget {
  final TextEditingController controller;
  final String label;
  final DatePicker datePicker;
  final DateTime? value;
  final bool checkForNullEmpty;
  final void Function(DateTime) onTap;

  DatePickerFormFieldZ({
    required this.controller,
    required this.label,
    required this.onTap,
    this.checkForNullEmpty = false,
    this.value,
    Key? key,
  })  : datePicker = DatePicker.buildPicker(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormFieldZ(
      controller: controller,
      label: label,
      checkForNullEmpty: checkForNullEmpty,
      readonly: true,
      onTap: () async {
        final result = await datePicker.showDatePicker(context: context);
        if (result == null) return;

        controller.text = DateFormatters.datetimeToSlashed(result);
        onTap(result);
      },
      suffix: const Icon(
        Icons.calendar_month,
      ),
    );
  }
}
