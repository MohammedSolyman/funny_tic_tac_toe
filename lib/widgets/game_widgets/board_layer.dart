import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:get/get.dart';

class BoardLayer extends StatelessWidget {
  const BoardLayer({super.key});

  @override
  Widget build(BuildContext context) {
    GameController gCont = Get.find<GameController>();

    return Obx(() {
      return GridView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: 9,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio:
              gCont.model.value.gridWidth / gCont.model.value.gridHeight,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              gCont.play(withAI: true, index: index);
            },
            child: const GameCell(),
          );
        },
      );
    });
  }
}

class GameCell extends StatelessWidget {
  const GameCell({super.key});

  @override
  Widget build(BuildContext context) {
    ThemingController thCont = Get.find<ThemingController>();

    return Obx(() {
      return Container(
        decoration: BoxDecoration(
            border: Border.all(color: thCont.model.value.myTheme.borderColor),
            color: thCont.model.value.myTheme.bgColor2,
            borderRadius: BorderRadius.circular(15)),
      );
    });
  }
}
