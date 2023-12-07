import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:get/get.dart';

class Panel extends StatelessWidget {
  const Panel({super.key});

  @override
  Widget build(BuildContext context) {
    GameController gCont = Get.find<GameController>();
    return Obx(() {
      return Align(
        alignment: gCont.model.value.panelAlignment,
        child: Container(
          width: gCont.model.value.panelWidth,
          height: gCont.model.value.panelHeight,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.abc),
              Icon(Icons.abc),
              Icon(Icons.abc),
            ],
          ),
        ),
      );
    });
  }
}
