import 'package:flutter/material.dart';

class UnfocusPointer extends StatelessWidget {
  final Widget? child;

  const UnfocusPointer({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        primaryFocus?.unfocus();
      },
      child: child,
    );
  }
}
