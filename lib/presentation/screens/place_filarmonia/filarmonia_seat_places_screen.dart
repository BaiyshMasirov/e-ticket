import 'package:auto_route/annotations.dart';
import 'package:eticket/presentation/screens/place_filarmonia/filarmonia_seat_places_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FilarmoniaSeatPlacesScreen extends StatelessWidget {
  const FilarmoniaSeatPlacesScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      body: FilarmoniaSeatPlacesView(),
    );
  }
}
