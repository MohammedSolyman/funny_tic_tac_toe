import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:get/get.dart';

class MovingDash extends StatelessWidget {
  const MovingDash({super.key});

  @override
  Widget build(BuildContext context) {
    GameController gCont = Get.find<GameController>();
    return Obx(() {
      return Align(
        alignment: gCont.model.value.panelAlignment,
        child: SizedBox(
          width: gCont.model.value.panelWidth,
          height: gCont.model.value.panelHeight,
          child: Center(
              child: CustomPaint(
            painter: MovingDashPainter(
                fraction: gCont.model.value.movingDashFraction),
            size: Size(
                gCont.model.value.panelWidth, gCont.model.value.panelHeight),
          )),
        ),
      );
    });
  }
}

class MovingDashPainter extends CustomPainter {
  MovingDashPainter({required this.fraction});
  double fraction;

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
    paint.color = Colors.red;
    paint.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = 10;

    //inner paint
    Paint paint2 = Paint();
    paint2.color = Colors.blue;
    paint2.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.round;
    paint2.strokeWidth = 1;

    //drawing
    canvas.drawLine(startPoint, endPoint, paint);
    canvas.drawLine(startPoint, endPoint, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
