import 'package:auto_route/annotations.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/locations/bishkek_arena/bishkek_arena_places/bishkek_arena_places_view.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/locations/bishkek_arena/models/models.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:eticket/data/models/models.dart';

@RoutePage()
class BishkekArenaPlacesScreen extends StatelessWidget {
  final BishkekArenaBlockType blockType;
  // TODO: need to think how to update it
  final List<TicketDto> tickets;

  const BishkekArenaPlacesScreen({
    required this.tickets,
    required this.blockType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: blockType.name.toUpperCase(),
      body: BishkekArenaPlacesView(
        tickets: tickets,
        blockType: blockType,
      ),
    );
  }
}
