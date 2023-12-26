import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:get/get.dart';

class TopBlockPainter extends CustomPainter {
  double p1x;
  double p1y;
  double controlPoint1x;
  double controlPoint2x;
  double controlPoint2y;

  TopBlockPainter(
      {required this.p1x,
      required this.p1y,
      required this.controlPoint1x,
      required this.controlPoint2x,
      required this.controlPoint2y});

  @override
  void paint(Canvas canvas, Size size) {
    ThemingController thCon = Get.find<ThemingController>();

    //dimensions
    double deviceWidth = size.width;
    double deviceHeight = size.height;

    Offset p1 = Offset(deviceWidth * p1x, deviceHeight * p1y);
    Offset p2 = Offset(deviceWidth, deviceHeight * 0.2);
    Offset p3 = Offset(deviceWidth, 0);
    Offset controlPoint1 =
        Offset(deviceWidth * controlPoint1x, deviceHeight * 0.1);
    Offset controlPoint2 =
        Offset(deviceWidth * controlPoint2x, deviceHeight * controlPoint2y);

    //body path
    Path bodyPath = Path();
    bodyPath.lineTo(p1.dx, p1.dy);
    bodyPath.cubicTo(
      controlPoint1.dx,
      controlPoint1.dy,
      controlPoint2.dx,
      controlPoint2.dy,
      p2.dx,
      p2.dy,
    );
    bodyPath.lineTo(p3.dx, p3.dy);
    bodyPath.close();

    //border path
    Path borderPath = Path();
    borderPath.lineTo(p1.dx, p1.dy);
    borderPath.cubicTo(
      controlPoint1.dx,
      controlPoint1.dy,
      controlPoint2.dx,
      controlPoint2.dy,
      p2.dx,
      p2.dy,
    );

    //shader rect
    Offset a = Offset.zero;
    Offset b = Offset(size.width, size.height);
    Rect rect = Rect.fromPoints(a, b);
    //body paint
    Paint bodyPaint = Paint();
    bodyPaint.shader =
        LinearGradient(colors: thCon.model.value.myTheme.primaryGradient)
            .createShader(rect);
    bodyPaint.style = PaintingStyle.fill;

    //border paint
    Paint borderPaint = Paint();
    borderPaint.color = thCon.model.value.myTheme.borderColor;
    borderPaint.style = PaintingStyle.stroke;
    borderPaint.strokeWidth = thCon.model.value.myTheme.borderWidth;

    //draw
    canvas.drawShadow(
        bodyPath, thCon.model.value.myTheme.shadowColor, 15, false);
    canvas.drawPath(bodyPath, bodyPaint);
    canvas.drawPath(borderPath, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
