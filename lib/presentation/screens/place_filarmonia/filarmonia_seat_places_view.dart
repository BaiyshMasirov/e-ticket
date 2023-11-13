import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/place_filarmonia/widgets/filarmonia_seat_places_booking.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class FilarmoniaSeatPlacesView extends StatelessWidget {
  const FilarmoniaSeatPlacesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
        // title: LocaleKeys.places.tr(),
        title: 'Филармония ',
        body: FilarmoniaSeatPlacesBooking());
  }
}
