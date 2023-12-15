import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:get/get.dart';

class Barrier extends StatelessWidget {
  const Barrier({super.key});

  @override
  Widget build(BuildContext context) {
    DimensionsController dCont = Get.find<DimensionsController>();
    GameController gCont = Get.find<GameController>();
    return Obx(
      () {
        if (gCont.model.value.showBarrier) {
          return Center(
            child: CustomPaint(
              painter: BarrierPaint(),
              size: Size(dCont.model.value.width, dCont.model.value.height),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}

class BarrierPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //paint
    Paint barrierPaint = Paint();
    barrierPaint.color = Colors.black.withOpacity(0.6);
    barrierPaint.style = PaintingStyle.fill;

    //drawing
    canvas.drawPaint(barrierPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
