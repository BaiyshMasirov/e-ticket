import 'package:auto_route/annotations.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/screens/place_ballet_theater/ballet_theater_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BalletTheaterScreen extends StatelessWidget {
  final LocationType locationType = LocationType.BalletTheater;

  const BalletTheaterScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: '',
      body: BalletTheaterView(),
    );
  }
}
