import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/bloc/ticket_seat_places_cubit.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/ticket_seat_places_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TicketSeatPlacesScreen extends StatelessWidget {
  final String eventId;

  const TicketSeatPlacesScreen({
    required this.eventId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TicketSeatPlacesCubit.initialize(
        eventId: eventId,
      )..getTickets(),
      child: AppScaffold(
        title: LocaleKeys.places.tr(),
        body: const TicketSeatPlacesView(),
        isLoadingFunc: (context) => context.select<TicketSeatPlacesCubit, bool>(
          (value) => value.state is TicketSeatPlacesStateLoading,
        ),
      ),
    );
  }
}
