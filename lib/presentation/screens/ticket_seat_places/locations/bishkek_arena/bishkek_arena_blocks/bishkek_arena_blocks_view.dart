import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/locations/bishkek_arena/bishkek_arena_blocks/blocks/b_arena_shape_border.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/locations/bishkek_arena/bishkek_arena_blocks/paths/paths.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/locations/bishkek_arena/bishkek_arena_places/bishkek_arena_places_view.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/locations/bishkek_arena/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:eticket/data/models/models.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/locations/bishkek_arena/bishkek_arena_blocks/blocks/blocks.dart';

class BishkekArenaBlocksView extends HookWidget {
  final List<TicketDto> tickets;

  const BishkekArenaBlocksView({
    required this.tickets,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final blockTypeState = useState<BishkekArenaBlockType?>(null);

    return WillPopScope(
      onWillPop: () async {
        if (blockTypeState.value != null) {
          blockTypeState.value = null;
          return false;
        }

        return true;
      },
      child: Stack(
        children: [
          Expanded(
            child: SizedBox(
              width: 182 * 2,
              height: 500,
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    right: 30,
                    child: BArenaBlock(
                      onPressed: () =>
                          blockTypeState.value = BishkekArenaBlockType.E,
                      title: BishkekArenaBlockType.E.name,
                      size: const Size(147, 90),
                      pathTemplate: bArenaTopCurvedPath,
                      shapeBorder: BArenaShapeBorder(
                        pathTemplate: bArenaTopCurvedPath,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    right: 7,
                    child: BArenaBlock(
                      title: BishkekArenaBlockType.F.name,
                      onPressed: () =>
                          blockTypeState.value = BishkekArenaBlockType.F,
                      size: const Size(70, 108),
                      pathTemplate: bArenaCurvedPath,
                      shapeBorder: BArenaShapeBorder(
                        pathTemplate: bArenaCurvedPath,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 217,
                    right: 8,
                    child: BArenaBlock(
                      title: BishkekArenaBlockType.G.name,
                      onPressed: () =>
                          blockTypeState.value = BishkekArenaBlockType.G,
                      size: const Size(55, 118),
                      pathTemplate: bArenaRectPath,
                      shapeBorder: BArenaShapeBorder(
                        pathTemplate: bArenaRectPath,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 345,
                    right: 8,
                    child: BArenaBlock(
                      title: BishkekArenaBlockType.H.name,
                      onPressed: () {},
                      size: const Size(55, 77),
                      pathTemplate: bArenaSquarePath,
                      shapeBorder: BArenaShapeBorder(
                        pathTemplate: bArenaSquarePath,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 30,
                    child: BArenaBlock(
                      title: BishkekArenaBlockType.D.name,
                      flipX: true,
                      onPressed: () =>
                          blockTypeState.value = BishkekArenaBlockType.D,
                      size: const Size(147, 90),
                      pathTemplate: bArenaTopCurvedPath,
                      shapeBorder: BArenaShapeBorder(
                        pathTemplate: bArenaTopCurvedPath,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 7,
                    child: BArenaBlock(
                      title: BishkekArenaBlockType.C.name,
                      flipX: true,
                      onPressed: () =>
                          blockTypeState.value = BishkekArenaBlockType.C,
                      size: const Size(70, 108),
                      pathTemplate: bArenaCurvedPath,
                      shapeBorder: BArenaShapeBorder(
                        pathTemplate: bArenaCurvedPath,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 217,
                    left: 8,
                    child: BArenaBlock(
                      flipX: true,
                      title: BishkekArenaBlockType.B.name,
                      onPressed: () =>
                          blockTypeState.value = BishkekArenaBlockType.B,
                      size: const Size(55, 118),
                      pathTemplate: bArenaRectPath,
                      shapeBorder: BArenaShapeBorder(
                        pathTemplate: bArenaRectPath,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 345,
                    left: 8,
                    child: BArenaBlock(
                      title: BishkekArenaBlockType.A.name,
                      flipX: true,
                      onPressed: () {},
                      size: const Size(55, 77),
                      pathTemplate: bArenaSquarePath,
                      shapeBorder: BArenaShapeBorder(
                        pathTemplate: bArenaSquarePath,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: BArenaBlock(
                        title: LocaleKeys.fun_zone.tr(),
                        flipX: true,
                        onPressed: () {},
                        size: const Size(192, 140),
                        pathTemplate: bArenaFunZone,
                        shapeBorder: BArenaShapeBorder(
                          pathTemplate: bArenaFunZone,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 343,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: BArenaBlock(
                        painterColor: const Color(0xFFFF0000),
                        title: LocaleKeys.scene.tr(),
                        flipX: true,
                        size: const Size(192, 79),
                        pathTemplate: bArenaScene,
                        shapeBorder: BArenaShapeBorder(
                          pathTemplate: bArenaScene,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: blockTypeState.value != null,
            child: blockTypeState.value == null
                ? const SizedBox.shrink()
                : BishkekArenaPlacesView(
                    blockType: blockTypeState.value!,
                    tickets: tickets,
                  ),
          ),
        ],
      ),
    );
  }
}
