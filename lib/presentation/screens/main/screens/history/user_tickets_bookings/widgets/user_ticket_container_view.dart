import 'package:eticket/presentation/screens/main/screens/history/user_tickets_bookings/widgets/user_ticket_item.dart';
import 'package:flutter/material.dart';

import 'package:eticket/data/models/models.dart';

class UserTicketContainerView extends StatelessWidget {
  final TicketsDto bookingTicket;
  final List<TicketsDto> arrayBookingTicket;

  const UserTicketContainerView({
    required this.bookingTicket,
    required this.arrayBookingTicket,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserTicketItem(
      arrayBookingTicket: arrayBookingTicket,
      bookingTicket: bookingTicket,
      key: ValueKey(bookingTicket.id),
    );
  }
}
