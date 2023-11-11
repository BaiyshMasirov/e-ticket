import 'package:auto_route/auto_route.dart';
import 'package:eticket/common/extensions/extensions.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/screens/place_bishkek_arena/models/models.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BishkekArenaBlocksView extends StatelessWidget {
  const BishkekArenaBlocksView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                      context.navigateTo(
                        BishkekArenaPlacesRoute(blockType: e),
                      );
                    },
                  ))
              .toList(),
        ),
      ],
    );
  }
}
