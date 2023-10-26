import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/extensions/extensions.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/screens/main/screens/event/event_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class EventScreen extends StatelessWidget {
  final EventDto event;

  const EventScreen({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        // title: Text(event.name ?? ''),
      ),
      extendBodyBehindAppBar: true,
      floatingActionButton: PrimaryButton(
        title: LocaleKeys.buy_ticket.tr(),
        onPressed: () {
          final eventDateTimes = DateTimeX.getDaysInBetween(
            event.startDate,
            event.endDate,
          );

          if (eventDateTimes.length == 1) {
            context.navigateTo(BookingTicketRoute(
              dateTime: eventDateTimes.first,
              eventId: event.id,
            ));
            return;
          }

          EventDatepickerDialog.showEventDatepickerDialog(
            context: context,
            eventDateTimes: eventDateTimes,
            onDatePick: (pickedDatetime) {
              context.navigateTo(BookingTicketRoute(
                dateTime: pickedDatetime,
                eventId: event.id,
              ));
            },
          );
        },
        horizontalPadding: 20.w,
        icon: const Icon(CupertinoIcons.creditcard),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        top: false,
        child: EventView(event: event),
      ),
    );
  }
}
