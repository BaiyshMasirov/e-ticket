import 'package:auto_route/annotations.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/screens/place_ru_dram_theater/ru_dram_theater_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RuDramTheaterScreen extends StatelessWidget {
  final locationType = LocationType.RuDramTheater;

  const RuDramTheaterScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: '',
      body: RuDramTheaterView(),
    );
  }
}
