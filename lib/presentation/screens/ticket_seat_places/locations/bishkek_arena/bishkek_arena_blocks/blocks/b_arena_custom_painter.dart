import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BArenaCustomPainter extends CustomPainter {
  final Path pathTemplate;
  final Color? color;

  const BArenaCustomPainter({
    required this.pathTemplate,
    this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..color = color ?? const Color(0xFF484646);

    canvas.drawPath(pathTemplate, paint);
  }

  @override
  bool hitTest(Offset position) {
    bool hit = pathTemplate.contains(position);

    return hit;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
