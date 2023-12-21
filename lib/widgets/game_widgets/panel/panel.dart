import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/panel/middle_block.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/panel/moving_dash.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/panel/o_player.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/panel/x_player.dart';
import 'package:get/get.dart';

class Panel extends StatelessWidget {
  const Panel({super.key});

  @override
  Widget build(BuildContext context) {
    GameController gCont = Get.find<GameController>();
    return Obx(() {
      return Align(
        alignment: gCont.model.value.panelAlignment,
        child: SizedBox(
          width: gCont.model.value.panelWidth,
          height: gCont.model.value.panelHeight,
          child: const Center(
            child: Stack(
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      XPlayer(),
                      MiddleBlock(),
                      OPlayer(),
                    ],
                  ),
                ),
                MovingDash(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
