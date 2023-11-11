import 'package:auto_route/annotations.dart';
import 'package:eticket/presentation/screens/place_bishkek_arena/bishkek_arena_blocks/bishkek_arena_blocks_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BishkekArenaBlocksScreen extends StatelessWidget {
  const BishkekArenaBlocksScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: '',
      body: BishkekArenaBlocksView(),
    );
  }
}
