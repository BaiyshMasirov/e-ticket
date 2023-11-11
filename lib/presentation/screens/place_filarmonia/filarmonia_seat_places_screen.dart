import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/place_filarmonia/bloc/filarmonia_seat_places_cubit.dart';
import 'package:eticket/presentation/screens/place_filarmonia/filarmonia_seat_places_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FilarmoniaSeatPlacesScreen extends StatelessWidget {
  final String eventId;

  const FilarmoniaSeatPlacesScreen({
    required this.eventId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilarmoniaSeatPlacesCubit.initialize(
        eventId: eventId,
      )..getTickets(),
      child: AppScaffold(
        title: LocaleKeys.places.tr(),
        body: const FilarmoniaSeatPlacesView(),
        isLoadingFunc: (context) => context.select<FilarmoniaSeatPlacesCubit, bool>(
          (value) => value.state is FilarmoniaSeatPlacesStateLoading,
        ),
      ),
    );
  }
}
