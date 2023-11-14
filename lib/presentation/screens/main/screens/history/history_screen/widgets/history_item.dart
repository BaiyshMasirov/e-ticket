import 'package:auto_route/auto_route.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:eticket/data/models/models.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryItem extends StatelessWidget {
  final UserBookingsListDto booking;
  final Function() onDecreasePressed;
  final Function() onIncreasePressed;
  final int ticketAmountChosen;

  const HistoryItem({
    required this.booking,
    required this.onDecreasePressed,
    required this.onIncreasePressed,
    required this.ticketAmountChosen,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageWidth = context.screenSize.screenWidth / 2.1;

    return InkWell(
      onTap: () {
        context.navigateTo(UserTicketsBookingsRoute(tiketId: booking.id ?? ''));
      },
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding.w / 2),
        decoration: BoxDecoration(
          color: context.colorScheme.onError,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Assets.images.blankTicket.image(
                  width: imageWidth,
                ),
                // Positioned(
                //   right: 0,
                //   left: 0,
                //   bottom: 0,
                //   top: 0,
                //   child: Padding(
                //     padding: EdgeInsets.all(5.w),
                //     child: Center(
                //       child: Column(
                //         mainAxisSize: MainAxisSize.min,
                //         children: [
                //           Text(
                //             ticket.name,
                //             textAlign: TextAlign.center,
                //             maxLines: 2,
                //             overflow: TextOverflow.ellipsis,
                //             style: context.theme.textTheme.labelLarge?.copyWith(
                //               color: context.colorScheme.onErrorContainer,
                //             ),
                //           ),
                //           SizedBox(height: 10.h),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(children: [Text(booking.eventName.toString())]),

                  // TicketStandingPlaceCounter(
                  //   amount: ticketAmountChosen.toString(),
                  //   onDecreasePressed: onDecreasePressed,
                  //   onIncreasePressed: onIncreasePressed,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
