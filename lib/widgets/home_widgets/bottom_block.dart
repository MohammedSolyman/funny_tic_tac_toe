import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:get/get.dart';

class BottomBlock extends StatelessWidget {
  const BottomBlock({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomPaint(
      painter: MyTopPainter(),
      size: Size(width, height),
    );
  }
}

class MyTopPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    ThemingController thCon = Get.find<ThemingController>();

    //dimensions
    double deviceWidth = size.width;
    double deviceHeight = size.height;

    Offset p1 = Offset(0, deviceHeight * 0.9);
    Offset p2 = Offset(deviceWidth, deviceHeight * 0.9);
    Offset p3 = Offset(deviceWidth, deviceHeight);
    Offset p4 = Offset(0, deviceHeight);
    Offset controlPoint1 = Offset(deviceWidth * (1 / 3), deviceHeight * 0.8);
    Offset controlPoint2 = Offset(deviceWidth * (2 / 3), deviceHeight);

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
    bodyPath.lineTo(p4.dx, p4.dy);
    bodyPath.close();

    //border path
    Path borderPath = Path();
    borderPath.moveTo(p1.dx, p1.dy);
    borderPath.cubicTo(
      controlPoint1.dx,
      controlPoint1.dy,
      controlPoint2.dx,
      controlPoint2.dy,
      p2.dx,
      p2.dy,
    );

    //body paint
    Paint bodyPaint = Paint();
    bodyPaint.color = thCon.model.value.myTheme.bgColor2;
    bodyPaint.style = PaintingStyle.fill;

    //border paint
    Paint borderPaint = Paint();
    borderPaint.color = thCon.model.value.myTheme.borderColor;
    borderPaint.style = PaintingStyle.stroke;
    borderPaint.strokeWidth = thCon.model.value.myTheme.borderWidth;

    //draw
    canvas.drawPath(bodyPath, bodyPaint);
    canvas.drawPath(borderPath, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
