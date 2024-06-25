import 'package:eticket/common/common.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/screens/main/screens/history/booking_tickets/widgets/widgets.dart';
import 'package:eticket/presentation/screens/main/screens/history/widgets/widgets.dart';
import 'package:eticket/presentation/theme/styling.dart';
import 'package:eticket/presentation/widgets/app_sliver_scroll_view.dart';
import 'package:eticket/presentation/widgets/empty_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingTicketsV extends StatelessWidget {
  final Fresh<BookingModel> booking;

  const BookingTicketsV({
    required this.booking,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tickets = booking.entity.tickets;

    return Column(
      children: [
        Visibility(
          visible: booking.isFresh == false,
          child: const HistoryCachedTitleV(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: 15.h,
          ),
          child: Column(
            children: [
              Text(
                booking.entity.eventName ?? '-',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),
              ),
              Text(
                DateFormatters.toDateTime(
                  booking.entity.eventDate,
                  pattern: DateFormatters.dMMMYHmsSpacedTemplate,
                ),
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              Text(
                booking.entity.locationName,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13.sp),
              ),
            ],
          ),
        ),
        Expanded(
          child: tickets.isEmpty
              ? const EmptyContent()
              : AppSliverScrollView(
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: 15.h,
                      ),
                      sliver: SliverList.separated(
                        itemCount: tickets.length,
                        itemBuilder: (context, i) {
                          final ticket = tickets[i];

                          return BookingTicketItemV(
                            ticket: ticket,
                            tickets: tickets,
                            key: ValueKey(ticket.id),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          height: 10.h,
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
