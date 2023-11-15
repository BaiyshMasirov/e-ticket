import 'package:eticket/common/common.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/presentation/screens/main/screens/history/user_tickets_bookings/widgets/user_tckets_qr/qr.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:eticket/data/models/models.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserTicketItem extends StatelessWidget {
  final UserTicketsBookingsDto ticket;
  final Function() onDecreasePressed;
  final Function() onIncreasePressed;
  final int ticketAmountChosen;

  const UserTicketItem({
    required this.ticket,
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
        // showModalBottomSheet<void>(
        //   context: context,
        //   builder: (BuildContext context) {
        //     return Qr(qrCode: 'qrCode');
        //   },
        // );
        showDialog(
            context: context,
            builder: (context) => Qr(qrCode: ticket.qrCode ?? ''));
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
                  Row(children: [
                    Text('Ряд:'),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(ticket.rowNumber.toString())
                  ]),
                  Row(children: [
                    Text('Место:'),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(ticket.placeNumber.toString())
                  ]),

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

  void showErrorAlert(BuildContext context, String qr) => showDialog(
      context: context,
      builder: (context) => Qr(
            qrCode: qr,
          ));
}
