import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/widgets/forms/text_form_field_z.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneFormFieldZ extends StatelessWidget {
  final TextEditingController controller;
  final bool readOnly;
  final bool enabled;
  final bool validate;
  final TextInputAction textInputAction;

  const PhoneFormFieldZ({
    required this.controller,
    this.validate = true,
    this.readOnly = false,
    this.enabled = true,
    this.textInputAction = TextInputAction.done,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maskFormatter = MaskTextInputFormatter(
      initialText: controller.text,
      mask: PhoneConstants.phoneMaskInput,
      filter: {'#': RegExp(r'[0-9]')},
    );

    return TextFormFieldZ(
      controller: controller,
      onTap: null,
      enabled: enabled,
      readonly: readOnly,
      textInputAction: textInputAction,
      textInputType: TextInputType.phone,
      inputFormatters: [maskFormatter],
      validate: validate
          ? (value) {
              final value = maskFormatter.getUnmaskedText();

              if (value.isEmpty) {
                return LocaleKeys.fillEmptyField.tr();
              }
              if (value.length < PhoneConstants.phoneLength) {
                return LocaleKeys.wrongPhoneFormat.tr();
              }

              return null;
            }
          : null,
      label: LocaleKeys.phoneNumber.tr(),
      suffix: const Icon(
        Icons.phone,
      ),
    );
  }
}
