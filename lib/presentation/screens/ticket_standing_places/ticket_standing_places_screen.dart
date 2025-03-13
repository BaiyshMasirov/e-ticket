import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_place_hold_cubit.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_places_cubit.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/ticket_standing_places_view.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/widgets/widgets.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class TicketStandingPlacesScreen extends StatelessWidget {
  final DateTime eventDate;
  final EventDto event;

  const TicketStandingPlacesScreen({
    required this.eventDate,
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TicketStandingPlacesCubit.initialize(
            eventId: event.id,
            eventDate: eventDate,
          )..getTickets(),
        ),
        BlocProvider(
          create: (context) => TicketStandingPlaceHoldCubit.initialize(
            eventId: event.id,
            eventDate: eventDate,
          ),
        ),
      ],
      child: AppScaffold(
        title: LocaleKeys.tickets.tr(),
        isLoadingFunc: (context) =>
            context.select<TicketStandingPlacesCubit, bool>(
              (value) => value.state is TicketStandingPlacesStateLoading,
            ) ||
            context.select<TicketStandingPlaceHoldCubit, bool>(
              (value) => value.state is TicketStandingPlaceHoldStateHolding,
            ),
        body: Column(
          children: [
            SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AutoLeadingButton(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Text(
                        event.name ?? event.locationName ?? '-',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              DateFormatters.toDateTime(
                eventDate,
                pattern: DateFormatters.dmYHmsDashedTemplate,
              ),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
              ),
            ),
            const Expanded(child: TicketStandingPlacesView()),
          ],
        ),
        floatingActionButton: const TicketStandingPlacePurchaseFab(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
