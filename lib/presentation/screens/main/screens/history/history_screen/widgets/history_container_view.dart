import 'package:eticket/presentation/screens/main/screens/history/history_screen/widgets/history_item.dart';
import 'package:flutter/material.dart';

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
      key: ValueKey(booking.eventName),
    );
  }
}
