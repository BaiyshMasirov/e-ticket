import 'package:common/common.dart';
import 'package:eticket/data/models/history/history_dto.dart';
import 'package:eticket/presentation/screens/main/screens/history/widgets/history_item.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_place_purchase_cubit.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import 'package:eticket/data/models/models.dart';

class HistoryContainerView extends StatelessWidget {
  final UserBookingsListDto booking;

  const HistoryContainerView({
    required this.booking,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HistoryItem(
      booking: booking,
      onDecreasePressed: () {},
      onIncreasePressed: () {},
      ticketAmountChosen: 1,
      key: ValueKey(booking.eventName),
    );
  }
}
