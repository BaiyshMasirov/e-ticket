import 'package:eticket/common/common.dart';
import 'package:flutter/material.dart';

class SnackbarMainContent extends StatelessWidget {
  final Function onCloseButtonPressed;
  final BoxDecoration? decoration;
  final Widget content;

  const SnackbarMainContent({
    required this.onCloseButtonPressed,
    required this.content,
    this.decoration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onCloseButtonPressed(),
      child: Container(
        decoration: decoration ??
            BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: context.colorScheme.background,
            ),
        child: content,
      ),
    );
  }
}
