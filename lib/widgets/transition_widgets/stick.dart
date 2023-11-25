import 'package:flutter/material.dart';

class Stick {
  final double width;
  final Offset p0;
  final Color borderColor;
  final Color bodyColor;
  Stick(
      {required this.width,
      required this.bodyColor,
      required this.borderColor,
      required this.p0});

  draw(Canvas canvas, Size size) {
    //dimensions
    double height = size.height;
    Offset p2 = Offset(p0.dx + width, p0.dy + height * 2);

    //path
    Radius radius = const Radius.circular(15);
    Rect rect = Rect.fromPoints(p0, p2);
    RRect rrect = RRect.fromRectAndCorners(
      rect,
      bottomLeft: radius,
      bottomRight: radius,
      topLeft: radius,
      topRight: radius,
    );

    Path path = Path();
    path.addRRect(rrect);

    //border paint
    Paint borderPaint = Paint();
    borderPaint.color = borderColor;
    borderPaint.style = PaintingStyle.stroke;
    borderPaint.strokeWidth = 5;

    //border paint
    Paint bodyPaint = Paint();
    bodyPaint.color = bodyColor;
    bodyPaint.style = PaintingStyle.fill;

    //drawing
    canvas.drawPath(path, bodyPaint);
    canvas.drawPath(path, borderPaint);
  }
}
