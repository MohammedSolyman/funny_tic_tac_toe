import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/transition_controller.dart';
import 'package:funny_tic_tac_toe/widgets/transition_widgets/components/transition_painter.dart';
import 'package:get/get.dart';

class TransitionBlock extends StatelessWidget {
  const TransitionBlock({super.key});

  @override
  Widget build(BuildContext context) {
    TransitionController tCont = Get.find<TransitionController>();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Obx(() {
      return CustomPaint(
        painter: TransitionPainter(
            tCont.model.value.sticksList, tCont.model.value.displacementY),
        size: Size(width, height),
      );
    });
  }
}
