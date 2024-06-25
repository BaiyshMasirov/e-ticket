import 'package:flutter/painting.dart';

class BArenaShapeBorder extends ShapeBorder {
  final Path pathTemplate;

  const BArenaShapeBorder({
    required this.pathTemplate,
  });

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) => Path();

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return pathTemplate;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    return;
  }

  @override
  ShapeBorder scale(double t) => this;
}
