import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/main/screens/history/booking_tickets/widgets/widgets.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:eticket/domain/domain.dart';

class BookingTicketItemV extends StatelessWidget {
  final TicketBookedModel ticket;
  final List<TicketBookedModel> tickets;

  const BookingTicketItemV({
    required this.ticket,
    required this.tickets,
    Key? key,
  }) : super(key: key);

  Widget buildTicketInfo() {
    switch (ticket.seatingType) {
      case TicketSeatingType.noSeating:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(ticket.ticketType.value),
          ],
        );
      case TicketSeatingType.seating:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(children: [
              Text('${LocaleKeys.rowNumber.tr()}:'),
              SizedBox(width: 5.w),
              Text(ticket.rowNumber.toString())
            ]),
            SizedBox(height: 10.h),
            Row(
              children: [
                Text('${LocaleKeys.placeNumber.tr()}:'),
                SizedBox(width: 5.w),
                Text(ticket.placeNumber.toString())
              ],
            ),
          ],
        );
      default:
        return const Column(
          mainAxisSize: MainAxisSize.min,
          children: [Text('-')],
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final imageWidth = context.screenSize.screenWidth / 2.1;

    return InkWell(
      onTap: () {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => BookingTicketsQRV(
            tickets: tickets,
            selectedIndex: tickets.indexOf(ticket),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding.w / 2),
        decoration: BoxDecoration(
          color: context.colorScheme.surfaceVariant,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Assets.images.ticket.image(width: imageWidth),
                SizedBox(
                  width: 90.w,
                  child: QrImageView(
                    backgroundColor: Colors.transparent,
                    data: ticket.qrCode,
                    gapless: true,
                    embeddedImageStyle: const QrEmbeddedImageStyle(
                      size: Size(100, 100),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10.w),
            Expanded(child: buildTicketInfo()),
          ],
        ),
      ),
    );
  }
}
