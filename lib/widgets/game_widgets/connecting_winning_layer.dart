import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:get/get.dart';

class ConnectingWinningLayer extends StatelessWidget {
  const ConnectingWinningLayer({super.key});

  @override
  Widget build(BuildContext context) {
    GameController gCont = Get.find<GameController>();
    return Obx(() {
      return CustomPaint(
        painter: WinningLayerPainter(gCont.model.value.cellsCenterPoints[0],
            gCont.model.value.cellsCenterPoints[8], 1),
        size: Size(gCont.model.value.gridWidth, gCont.model.value.gridHeight),
      );
    });
  }
}

class WinningLayerPainter extends CustomPainter {
  Offset p1;
  Offset p2;
  double fraction;
  WinningLayerPainter(this.p1, this.p2, this.fraction);
  @override
  void paint(Canvas canvas, Size size) {
    //dimensions

    double a = p2.dx - p1.dx;
    double b = p2.dy - p1.dy;

    Offset p = Offset((p1.dx + a) * fraction, (p1.dy + b) * fraction);
//paint
    Paint paint = Paint();
    paint.color = Colors.blue;
    paint.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = 20;

    //path
    Path path = Path();
    path.moveTo(p1.dx, p1.dy);
    path.lineTo(p.dx, p.dy);
    path.close();

    //draw
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
