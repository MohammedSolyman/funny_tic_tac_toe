import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
import 'package:get/get.dart';

class Barrier extends StatelessWidget {
  const Barrier({super.key});

  @override
  Widget build(BuildContext context) {
    DimensionsController dCont = Get.find<DimensionsController>();
    return Obx(
      () {
        return Center(
          child: CustomPaint(
            painter: BarrierPaint(),
            size: Size(dCont.model.value.width, dCont.model.value.height),
          ),
        );
      },
    );
  }
}

class BarrierPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //paint
    Paint barrierPaint = Paint();
    barrierPaint.color = Colors.grey.withOpacity(0.5);
    barrierPaint.style = PaintingStyle.fill;

    //drawing
    canvas.drawPaint(barrierPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
