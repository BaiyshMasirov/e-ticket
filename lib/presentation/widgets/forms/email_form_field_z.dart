import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/widgets/forms/text_form_field_z.dart';
import 'package:flutter/material.dart';

final _emailRegex = RegExp(
  r'^[a-zA-Z0-9.a-zA-Z0-9.!#$%&*+-=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+$',
);

class EmailFormFieldZ extends StatelessWidget {
  final TextEditingController controller;
  final bool readOnly;
  final bool enabled;
  final bool validate;
  final bool checkForNullEmpty;

  const EmailFormFieldZ({
    required this.controller,
    this.validate = true,
    this.readOnly = false,
    this.enabled = true,
    this.checkForNullEmpty = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormFieldZ(
      controller: controller,
      onTap: null,
      enabled: enabled,
      readonly: readOnly,
      checkForNullEmpty: checkForNullEmpty,
      textInputType: TextInputType.emailAddress,
      validate: validate
          ? (value) {
              if (value == null || value.isEmpty) {
                return LocaleKeys.fillEmptyField.tr();
              }

              if (!_emailRegex.hasMatch(value)) {
                return LocaleKeys.wrongEmailFormat.tr();
              }

              return null;
            }
          : null,
      label: LocaleKeys.email.tr(),
    );
  }
}
