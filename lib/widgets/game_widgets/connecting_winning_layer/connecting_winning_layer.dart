import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:get/get.dart';

class ConnectingWinningLayer extends StatelessWidget {
  const ConnectingWinningLayer({super.key});

  @override
  Widget build(BuildContext context) {
    GameController gCont = Get.find<GameController>();
    ThemingController thCont = Get.find<ThemingController>();
    return Obx(() {
      if (gCont.model.value.winningPoints.isEmpty) {
        return Container();
      } else {
        return CustomPaint(
          painter: WinningLayerPainter(
              p1: gCont.model.value.winningPoints[0],
              p2: gCont.model.value.winningPoints[1],
              fraction: gCont.model.value.winnginLineProgress,
              innerColor: thCont.model.value.myTheme.innerLineColor,
              outerColor: thCont.model.value.myTheme.outerLineColor),
          size: Size(gCont.model.value.gridWidth, gCont.model.value.gridHeight),
        );
      }
    });
  }
}

class WinningLayerPainter extends CustomPainter {
  Offset p1;
  Offset p2;
  double fraction;
  Color innerColor;
  Color outerColor;
  WinningLayerPainter(
      {required this.p1,
      required this.p2,
      required this.fraction,
      required this.innerColor,
      required this.outerColor});
  @override
  void paint(Canvas canvas, Size size) {
    //dimensions
    double a = p2.dx - p1.dx;
    double b = p2.dy - p1.dy;

    Offset p = Offset(p1.dx + (a * fraction), p1.dy + (b * fraction));
    //outer paint
    Paint paint = Paint();
    paint.color = outerColor;
    paint.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = 20;

    //inner paint
    Paint paint2 = Paint();
    paint2.color = innerColor;
    paint2.style = PaintingStyle.stroke;
    paint2.strokeWidth = 10;

    //draw
    canvas.drawLine(Offset(p1.dx, p1.dy), Offset(p.dx, p.dy), paint);
    canvas.drawLine(Offset(p1.dx, p1.dy), Offset(p.dx, p.dy), paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
