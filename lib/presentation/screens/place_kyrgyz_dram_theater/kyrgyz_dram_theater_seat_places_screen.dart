import 'package:auto_route/annotations.dart';
import 'package:eticket/presentation/screens/place_kyrgyz_dram_theater/kyrgyz_dram_theater_seat_places_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class KyrgyzDramTheaterSeatPlacesScreen extends StatelessWidget {
  const KyrgyzDramTheaterSeatPlacesScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      body: KyrgyzDramTheaterSeatPlacesView(),
    );
  }
}
