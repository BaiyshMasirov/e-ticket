import 'package:common/common.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_place_purchase_cubit.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import 'package:eticket/data/models/models.dart';

class TicketStandingPlacesContainerView extends StatelessWidget {
  final TicketTypeCountDto ticket;

  const TicketStandingPlacesContainerView({
    required this.ticket,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TicketStandingPlaceItem(
      ticket: ticket,
      onDecreasePressed: () {
        context
            .read<TicketStandingPlacePurchaseCubit>()
            .decreaseTicketAmount(ticket.type);
      },
      onIncreasePressed: () {
        context
            .read<TicketStandingPlacePurchaseCubit>()
            .increaseTicketAmount(ticket.type);
      },
      ticketAmountChosen: context.select<TicketStandingPlacePurchaseCubit, int>(
        (value) =>
            value.state.chosenTickets
                .firstWhereOrNull((item) => item.type == ticket.type)
                ?.count ??
            0,
      ),
      key: ValueKey(ticket.type),
    );
  }
}
