import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/panel/moving_dash/moving_dash_painter.dart';
import 'package:get/get.dart';

class MovingDash extends StatelessWidget {
  const MovingDash({super.key});

  @override
  Widget build(BuildContext context) {
    GameController gCont = Get.find<GameController>();
    ThemingController thCont = Get.find<ThemingController>();
    return Obx(() {
      return Align(
        alignment: gCont.model.value.panelAlignment,
        child: SizedBox(
          width: gCont.model.value.panelWidth,
          height: gCont.model.value.panelHeight,
          child: Center(
              child: CustomPaint(
            painter: MovingDashPainter(
                innerLineColor: thCont.model.value.myTheme.innerLineColor,
                outerLineColor: thCont.model.value.myTheme.outerLineColor,
                fraction: gCont.model.value.movingDashFraction),
            size: Size(
                gCont.model.value.panelWidth, gCont.model.value.panelHeight),
          )),
        ),
      );
    });
  }
}
