import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Helpers
import '../../../helper/extensions/context_extensions.dart';
import '../../../helper/utils/constants.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final double? width, height;
  final int? maxLength;
  final String? floatingText, hintText;
  final TextStyle hintStyle, errorStyle, inputStyle;
  final TextStyle? floatingStyle;
  final EdgeInsets? contentPadding;
  final void Function(String? value)? onSaved, onChanged;
  final Widget? prefix;
  final bool showCursor;
  final bool autofocus;
  final bool showErrorBorder;
  final TextAlign textAlign;
  final Alignment errorAlign, floatingAlign;
  final Color fillColor;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String? Function(String? value) validator;

  const CustomTextField({
    Key? key,
    this.controller,
    this.width,
    this.height = 47,
    this.maxLength,
    this.floatingText,
    this.floatingStyle,
    this.onSaved,
    this.onChanged,
    this.prefix,
    this.showCursor = true,
    this.showErrorBorder = false,
    this.autofocus = false,
    this.textAlign = TextAlign.start,
    this.errorAlign = Alignment.centerRight,
    this.floatingAlign = Alignment.centerLeft,
    this.fillColor = Constants.scaffoldColor,
    this.hintText,
    this.hintStyle = const TextStyle(
      fontSize: 17,
      color: Constants.textFieldStyleText,
    ),
    this.errorStyle = const TextStyle(
      height: 0,
      color: Colors.transparent,
    ),
    this.inputStyle = const TextStyle(
      fontSize: 17,
      color: Constants.barrierColor,
    ),
    this.contentPadding = const EdgeInsets.fromLTRB(17, 10, 1, 10),
    required this.keyboardType,
    required this.textInputAction,
    required this.validator,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String? errorText;
  bool hidePassword = true;

  bool get hasError => errorText != null;

  bool get showErrorBorder => widget.showErrorBorder && hasError;

  bool get hasFloatingText => widget.floatingText != null;

  bool get isPasswordField =>
      widget.keyboardType == TextInputType.visiblePassword;

  void _onSaved(String? value) {
    value = value!.trim();
    widget.controller?.text = value;
    widget.onSaved?.call(value);
  }

  void _onChanged(String value) {
    if (widget.onChanged != null) {
      _runValidator(value);
      widget.onChanged!(value);
    }
  }

  String? _runValidator(String? value) {
    final error = widget.validator(value!.trim());
    setState(() {
      errorText = error;
    });
    return error;
  }

  void _togglePasswordVisibility() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  OutlineInputBorder _focusedBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      borderSide: BorderSide(
        color: Constants.redColor,
      ),
    );
  }

  OutlineInputBorder _normalBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      borderSide: BorderSide.none,
    );
  }

  OutlineInputBorder _errorBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      borderSide: BorderSide(
        color: Constants.redColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //Floating text
        if (hasFloatingText) ...[
          SizedBox(
            width: widget.width,
            child: Align(
              alignment: widget.floatingAlign,
              child: Text(
                widget.floatingText!,
                style: widget.floatingStyle ??
                    context.bodyText1.copyWith(
                      color: Constants.textFieldStyleText,
                      fontSize: 17,
                    ),
              ),
            ),
          ),
          const SizedBox(height: 2),
        ],

        //TextField
        TextFormField(
          controller: widget.controller,
          textAlign: widget.textAlign,
          autofocus: widget.autofocus,
          maxLength: widget.maxLength,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          style: widget.inputStyle,
          showCursor: widget.showCursor,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          textAlignVertical: TextAlignVertical.center,
          autovalidateMode: AutovalidateMode.disabled,
          cursorColor: Colors.white,
          obscureText: isPasswordField && hidePassword,
          validator: _runValidator,
          onFieldSubmitted: _runValidator,
          onSaved: _onSaved,
          onChanged: _onChanged,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: widget.hintStyle,

            errorStyle: const TextStyle(color: Constants.redColor),
            // labelStyle: TextStyle(fontSize: 18.0),
            fillColor: Colors.white,
            prefixIcon: widget.prefix,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 16.0,
            ),
            isDense: true,
            filled: true,
            counterText: '',
            border: _normalBorder(),
            focusedBorder: _focusedBorder(),
            focusedErrorBorder: _focusedBorder(),
            errorBorder: showErrorBorder ? _errorBorder() : null,
            suffixIcon: isPasswordField
                ? InkWell(
                    onTap: _togglePasswordVisibility,
                    child: const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.remove_red_eye_sharp,
                        color: Constants.textGreyColor,
                        size: 22,
                      ),
                    ),
                  )
                : null,
          ),
        ),

        //Error text
        // if (hasError) ...[
        //   // const SizedBox(height: 1),
        //   Align(
        //     alignment: widget.errorAlign,
        //     child: Text(
        //       errorText!,
        //       style: context.bodyText1.copyWith(
        //         fontSize: 14,
        //         color: Constants.primaryColor,
        //       ),
        //     ),
        //   ),
        // ]
      ],
    );
  }
}
