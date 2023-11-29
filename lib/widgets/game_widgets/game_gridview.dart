import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
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
          width: 200,
          height: 200,
          child: GridView.builder(
            padding: const EdgeInsets.all(0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
              );
            },
          ),
        ),
      );
    });
  }
}
