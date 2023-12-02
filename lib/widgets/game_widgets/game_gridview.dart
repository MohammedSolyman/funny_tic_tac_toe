import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/connecting_winning_layer.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/xo_layer.dart';
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
          child: Stack(
            children: [
              GridView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: gCont.model.value.gridWidth /
                      gCont.model.value.gridHeight,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // gCont.putO(index);
                      gCont.putX(index);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  );
                },
              ),
              const IgnorePointer(child: XOLayer()),
              const IgnorePointer(child: ConnectingWinningLayer()),
            ],
          ),
        ),
      );
    });
  }
}
