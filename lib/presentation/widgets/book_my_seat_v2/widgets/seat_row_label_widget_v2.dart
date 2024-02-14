import 'package:flutter/material.dart';

class SeatRowLabelV2 extends StatelessWidget {
  final String rowLabel;
  final double size;

  const SeatRowLabelV2({
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
