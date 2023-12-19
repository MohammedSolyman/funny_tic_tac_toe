import 'package:flutter/material.dart';

class Stick {
  final double width;
  int stickIndex;

  Stick({required this.width, required this.stickIndex});

  draw({
    required Canvas canvas,
    required Size size,
    required Color borderColor,
    required Color bodyColor,
    double displacement = 3000,
  }) {
    //dimensions
    double height = size.height * 2;

    Offset p0 = Offset(stickIndex * width, displacement);
    Offset p1 = Offset(p0.dx, height + displacement);
    Offset p2 = Offset(p0.dx + width, height + displacement);
    Offset p3 = Offset(p0.dx + width, displacement);
    Offset c1 = Offset(p0.dx + width * 0.5, (height * 1.05) + displacement);
    Offset c2 = Offset(p0.dx + width * 0.5, (-height * 0.05) + displacement);

    //path
    Path path = Path();
    path.moveTo(p0.dx, p0.dy);
    path.lineTo(p1.dx, p1.dy);
    path.conicTo(c1.dx, c1.dy, p2.dx, p2.dy, 0.5);
    path.lineTo(p3.dx, p3.dy);
    path.conicTo(c2.dx, c2.dy, p0.dx, p0.dy, 0.5);

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
