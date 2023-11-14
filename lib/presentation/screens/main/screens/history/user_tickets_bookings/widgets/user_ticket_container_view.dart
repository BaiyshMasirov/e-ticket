import 'package:eticket/presentation/screens/main/screens/history/history_screen/widgets/history_item.dart';
import 'package:eticket/presentation/screens/main/screens/history/user_tickets_bookings/widgets/user_ticket_item.dart';
import 'package:flutter/material.dart';

import 'package:eticket/data/models/models.dart';

class UserTicketContainerView extends StatelessWidget {
  final UserTicketsBookingsDto ticket;

  const UserTicketContainerView({
    required this.ticket,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserTicketItem(
      ticket: ticket,
      onDecreasePressed: () {},
      onIncreasePressed: () {},
      ticketAmountChosen: 1,
      key: ValueKey(ticket.price),
    );
  }
}
