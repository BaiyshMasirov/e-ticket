import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/locations/bishkek_arena/bishkek_arena_blocks/blocks/b_arena_custom_painter.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BArenaBlock extends StatelessWidget {
  final Size size;
  final ShapeBorder shapeBorder;
  final Color? backgroundColor;
  final Color? painterColor;
  final Function()? onPressed;
  final Path pathTemplate;
  final String title;
  final bool flipX;

  const BArenaBlock({
    required this.title,
    required this.size,
    required this.shapeBorder,
    required this.pathTemplate,
    this.onPressed,
    this.backgroundColor,
    this.painterColor,
    this.flipX = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Transform.flip(
            flipX: flipX,
            child: Material(
              shape: shapeBorder,
              color: backgroundColor ?? context.colorScheme.primary,
              child: ZoomTapButton(
                onTap: onPressed,
                child: CustomPaint(
                  painter: BArenaCustomPainter(
                    pathTemplate: pathTemplate,
                    color: painterColor,
                  ),
                ),
              ),
            ),
          ),
          IgnorePointer(
            ignoring: true,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
