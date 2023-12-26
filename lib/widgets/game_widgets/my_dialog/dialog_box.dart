import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_dialog/dialog_box_painter.dart';
import 'package:get/get.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    GameController gCont = Get.find<GameController>();
    ThemingController thCont = Get.find<ThemingController>();
    return Obx(
      () {
        return Center(
          child: CustomPaint(
            painter: DialogBoxPaint(
                primaryGradient: thCont.model.value.myTheme.primaryGradient,
                borderColor: thCont.model.value.myTheme.borderColor,
                bubbleBodyColor: Colors.orange,
                bubbleBorderColor: Colors.red,
                textColor: Colors.yellow,
                text: gCont.model.value.resultText),
            size: Size(
                gCont.model.value.dialogWidth, gCont.model.value.dialogHeight),
          ),
        );
      },
    );
  }
}
