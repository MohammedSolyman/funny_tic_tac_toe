import 'package:flutter/material.dart';

class MovingDashPainter extends CustomPainter {
  Color outerLineColor;
  Color innerLineColor;
  double fraction;

  MovingDashPainter(
      {required this.outerLineColor,
      required this.innerLineColor,
      required this.fraction});

  @override
  void paint(Canvas canvas, Size size) {
    //dimensions
    double widthUnit = size.width / 7;
    double height = size.height * 0.9;

    double dashLength = widthUnit * 3;
    double displacement = widthUnit * 4;

    double startX = displacement * fraction;
    double endX = startX + dashLength;

    Offset startPoint = Offset(startX, height);
    Offset endPoint = Offset(endX, height);

    //inner paint
    Paint paint = Paint();
    paint.color = outerLineColor;
    paint.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = 10;

    //inner paint
    Paint paint2 = Paint();
    paint2.color = innerLineColor;
    paint2.style = PaintingStyle.fill;

    //drawing
    canvas.drawLine(startPoint, endPoint, paint);
    canvas.drawLine(startPoint, endPoint, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
