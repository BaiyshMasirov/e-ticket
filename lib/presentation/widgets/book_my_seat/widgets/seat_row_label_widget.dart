import 'package:flutter/material.dart';

class SeatRowLabel extends StatelessWidget {
  final String rowLabel;
  final double size;

  const SeatRowLabel({
    required this.rowLabel,
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: FittedBox(
        child: Text(
          rowLabel,
        ),
      ),
    );
  }
}
