import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/connecting_winning_layer/connecting_winning_layer.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/board_layer/board_layer.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/xo_layer/xo_layer.dart';
import 'package:get/get.dart';

class GameGridView extends StatelessWidget {
  const GameGridView({super.key});

  @override
  Widget build(BuildContext context) {
    GameController gCont = Get.find<GameController>();

    return Obx(() {
      return Align(
        alignment: gCont.model.value.gridAlignment,
        child: SizedBox(
          width: gCont.model.value.gridWidth,
          height: gCont.model.value.gridHeight,
          child: const Stack(
            children: [
              BoardLayer(),
              IgnorePointer(child: XOLayer()),
              IgnorePointer(child: ConnectingWinningLayer()),
            ],
          ),
        ),
      );
    });
  }
}
