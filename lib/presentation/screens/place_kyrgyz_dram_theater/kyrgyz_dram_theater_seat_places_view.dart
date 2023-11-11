import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/place_kyrgyz_dram_theater/widgets/national_seat_places_booking.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class KyrgyzDramTheaterSeatPlacesView extends StatelessWidget {
  const KyrgyzDramTheaterSeatPlacesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: LocaleKeys.places.tr(), body: const NationalSeatPlacesBooking());
  }
}
