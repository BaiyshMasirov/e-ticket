import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/widgets/forms/text_form_field_z.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PasswordFormFieldZ extends HookWidget {
  final TextEditingController controller;
  final String? Function(String?)? validate;
  final String? label;
  final bool checkForNullEmpty;
  final TextInputAction textInputAction;

  const PasswordFormFieldZ({
    required this.controller,
    this.checkForNullEmpty = false,
    this.validate,
    this.label,
    this.textInputAction = TextInputAction.done,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hidePassword = useState(true);

    return TextFormFieldZ(
      controller: controller,
      obscureText: hidePassword.value,
      textInputAction: textInputAction,
      suffix: IconButton(
        onPressed: () {
          hidePassword.value = !hidePassword.value;
        },
        icon: Icon(
          hidePassword.value ? Icons.visibility_off : Icons.visibility,
        ),
      ),
      checkForNullEmpty: checkForNullEmpty,
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
