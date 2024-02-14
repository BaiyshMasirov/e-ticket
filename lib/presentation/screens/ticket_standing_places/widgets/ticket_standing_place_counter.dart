import 'package:eticket/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final _splashR = 20.r;

class TicketStandingPlaceCounter extends StatelessWidget {
  final Function() onDecreasePressed;
  final Function() onIncreasePressed;
  final String amount;

  const TicketStandingPlaceCounter({
    required this.onDecreasePressed,
    required this.onIncreasePressed,
    required this.amount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Row(
        children: [
          IconButton(
            splashRadius: _splashR,
            onPressed: onDecreasePressed,
            color: context.colorScheme.secondary,
            icon: const Icon(CupertinoIcons.minus_circle_fill),
          ),
          Spacer(),
          Text(amount),
          Spacer(),
          IconButton(
            splashRadius: _splashR,
            onPressed: onIncreasePressed,
            color: context.colorScheme.primary,
            icon: const Icon(CupertinoIcons.add_circled_solid),
          ),
        ],
      ),
    );
  }
}
