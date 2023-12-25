import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:funny_tic_tac_toe/controllers/home_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:get/get.dart';

class GameCell extends StatelessWidget {
  final int index;
  const GameCell({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    ThemingController thCont = Get.find<ThemingController>();
    HomeController hCont = Get.find<HomeController>();
    GameController gCont = Get.find<GameController>();

    return Obx(() {
      return InkWell(
        onTap: () async {
          await gCont.play(withAI: hCont.model.value.withAi, index: index);
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: thCont.model.value.myTheme.borderColor),
              gradient: LinearGradient(
                  colors: thCont.model.value.myTheme.topBottomGradient),
              borderRadius: BorderRadius.circular(15)),
        ),
      );
    });
  }
}
