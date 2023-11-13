import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_place_purchase_cubit.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_places_cubit.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/ticket_standing_places_view.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/widgets/widgets.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TicketStandingPlacesScreen extends StatelessWidget {
  final LocationType locationType = LocationType.NoSeating;
  final String eventId;
  final DateTime dateTime;

  const TicketStandingPlacesScreen({
    required this.eventId,
    required this.dateTime,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TicketStandingPlacesCubit.initialize(
            eventId: eventId,
            dateTime: dateTime,
          )..getTickets(),
        ),
        BlocProvider(
          create: (context) => TicketStandingPlacePurchaseCubit.initialize(),
        ),
      ],
      child: AppScaffold(
        title: LocaleKeys.tickets.tr(),
        isLoadingFunc: (context) =>
            context.select<TicketStandingPlacesCubit, bool>(
          (value) => value.state is TicketStandingPlacesStateLoading,
        ),
        body: const TicketStandingPlacesView(),
        floatingActionButton: const TicketStandingPlacePurchaseFab(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
