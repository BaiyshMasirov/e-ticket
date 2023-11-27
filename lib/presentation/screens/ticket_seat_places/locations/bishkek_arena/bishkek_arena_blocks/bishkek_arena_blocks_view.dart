import 'package:eticket/common/extensions/extensions.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/locations/bishkek_arena/bishkek_arena_places/bishkek_arena_places_view.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/locations/bishkek_arena/models/models.dart';
import 'package:eticket/presentation/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eticket/data/models/models.dart';

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
          Column(
            children: [
              Expanded(
                child: InteractiveViewer(
                  maxScale: 10,
                  minScale: 1,
                  constrained: false,
                  child: Assets.images.bishkekArena.image(
                    height: context.screenSize.screenHeight,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              GridView(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  childAspectRatio: 3 / 1,
                ),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: BishkekArenaBlockType.values
                    .map((e) => PrimaryButton(
                          title: e.name.toUpperCase(),
                          onPressed: () {
                            blockTypeState.value = e;
                          },
                        ))
                    .toList(),
              ),
            ],
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
