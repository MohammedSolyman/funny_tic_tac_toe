import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:funny_tic_tac_toe/controllers/transition_controller.dart';
import 'package:funny_tic_tac_toe/widgets/transition_widgets/components/transition_painter.dart';
import 'package:get/get.dart';

class TransitionBlock extends StatelessWidget {
  const TransitionBlock({super.key});

  @override
  Widget build(BuildContext context) {
    TransitionController tCont = Get.find<TransitionController>();
    ThemingController thCont = Get.find<ThemingController>();
    DimensionsController dCont = Get.find<DimensionsController>();

    return Obx(() {
      return CustomPaint(
        painter: TransitionPainter(
          bodyColor1: thCont.model.value.myTheme.primaryGradient[0],
          bodyColor2: thCont.model.value.myTheme.backgroundColor,
          borderColor: thCont.model.value.myTheme.borderColor,
          displacement: tCont.model.value.displacementY,
        ),
        size: Size(dCont.model.value.width, dCont.model.value.height),
      );
    });
  }
}
