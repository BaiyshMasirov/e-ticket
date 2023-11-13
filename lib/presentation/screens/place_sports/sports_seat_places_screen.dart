import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/place_sports/bloc/sports_seat_places_cubit.dart';
import 'package:eticket/presentation/screens/place_sports/sports_seat_places_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SportsSeatPlacesScreen extends StatelessWidget {
  final String eventId;

  const SportsSeatPlacesScreen({
    required this.eventId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SportsSeatPlacesCubit.initialize(
        eventId: eventId,
      )..getTickets(),
      child: AppScaffold(
        title: LocaleKeys.places.tr(),
        body: const SportsSeatPlacesView(),
        isLoadingFunc: (context) => context.select<SportsSeatPlacesCubit, bool>(
          (value) => value.state is SportsSeatPlacesStateLoading,
        ),
      ),
    );
  }
}
