import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:get/get.dart';

class GameCell extends StatelessWidget {
  final int index;
  const GameCell({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    ThemingController thCont = Get.find<ThemingController>();
    GameController gCont = Get.find<GameController>();

    return Obx(() {
      return InkWell(
        onTap: () {
          gCont.play(withAI: true, index: index);
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: thCont.model.value.myTheme.borderColor),
              color: thCont.model.value.myTheme.bgColor2,
              borderRadius: BorderRadius.circular(15)),
        ),
      );
    });
  }
}
