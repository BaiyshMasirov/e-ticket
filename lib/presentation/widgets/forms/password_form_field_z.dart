import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/widgets/forms/text_form_field_z.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PasswordFormFieldZ extends HookWidget {
  final TextEditingController controller;
  final String? Function(String?)? validate;
  final String? label;

  const PasswordFormFieldZ({
    required this.controller,
    this.validate,
    this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hidePassword = useState(true);

    return TextFormFieldZ(
      controller: controller,
      obscureText: hidePassword.value,
      suffix: IconButton(
        onPressed: () {
          hidePassword.value = !hidePassword.value;
        },
        icon: Icon(
          hidePassword.value ? Icons.visibility_off : Icons.visibility,
        ),
      ),
      validate: (value) {
        if (value == null || value.isEmpty) {
          return LocaleKeys.fillEmptyField.tr();
        }

        if (validate != null) {
          final result = validate?.call(value);
          if (result != null) {
            return result;
          }
        }

        return null;
      },
      label: label ?? LocaleKeys.password.tr(),
    );
  }
}
