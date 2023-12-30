import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/bottom_block/bottom_block_painter.dart';
import 'package:get/get.dart';

class BottomBlock extends StatelessWidget {
  const BottomBlock({super.key});

  @override
  Widget build(BuildContext context) {
    DimensionsController dCont = Get.find<DimensionsController>();

    return Obx(() {
      return CustomPaint(
        painter: BottomBlockPainter(),
        size: Size(dCont.model.value.width, dCont.model.value.height),
      );
    });
  }
}
