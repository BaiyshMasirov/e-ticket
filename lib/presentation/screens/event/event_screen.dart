import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/screens/event/event_view.dart';
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
      bgColor: context.colorScheme.surfaceVariant,
      extendBodyBehindAppBar: true,
      floatingActionButton: event.canPurchaseTickets &&
              EventSeatingType.hasAvailableSeatingType(event.seatingType)
          ? PrimaryButton(
              title: LocaleKeys.schedule.tr(),
              onPressed: () {
                EventDatepickerDialog.showEventDatepickerDialog(
                  context: context,
                  eventDateTimes: event.dateRange,
                  onDatePick: (pickedDatetime) {
                    navigateToBooking(
                      dateTime: pickedDatetime,
                      event: event,
                      context: context,
                    );
                  },
                );
              },
              horizontalPadding: 20.w,
              icon: const Icon(CupertinoIcons.creditcard),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        top: false,
        child: EventView(event: event),
      ),
    );
  }

  void navigateToBooking({
    required BuildContext context,
    required EventDto event,
    required DateTime dateTime,
  }) {
    if (event.seatingType == EventSeatingType.noSeating) {
      context.navigateTo(
        TicketStandingPlacesRoute(
          eventId: event.id,
          dateTime: dateTime,
        ),
      );

      return;
    }

    context.navigateTo(TicketSeatPlacesRoute(
      locationType: event.locationType,
      eventDate: dateTime,
      event: event,
    ));
  }
}
