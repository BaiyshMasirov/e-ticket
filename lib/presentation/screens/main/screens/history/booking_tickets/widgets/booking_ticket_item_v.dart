import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/main/screens/history/booking_tickets/widgets/widgets.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/cupertino.dart';
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

  Widget _buildTicketInfo() {
    final ts = TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w500,
    );

    switch (ticket.seatingType) {
      case TicketSeatingType.noSeating:
        return Text(ticket.ticketType.value, style: ts);
      case TicketSeatingType.seating:
        return Text(
          '${LocaleKeys.rowNumber.tr()}: ${ticket.rowNumber.toString()}\n'
          '${LocaleKeys.placeNumber.tr()}: ${ticket.placeNumber.toString()}',
          style: ts,
        );
      default:
        return const Text('-');
    }
  }

  Widget _buildTicketSeat(BuildContext context) {
    final size = 50.w;

    switch (ticket.seatingType) {
      case TicketSeatingType.noSeating:
        return Icon(Icons.man_rounded, size: size);
      case TicketSeatingType.seating:
        return Icon(Icons.event_seat_rounded, size: size);
      default:
        return Icon(
          Icons.error_rounded,
          size: size,
          color: context.appColors.red,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20.r),
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
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Text(ticket.seatingType.name),
                _buildTicketSeat(context),
                SizedBox(width: 20.w),
                Expanded(child: _buildTicketInfo()),
                SizedBox(width: 10.w),
                Text(
                  ticket.price.toStringAsFixed(2),
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
