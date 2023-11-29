import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/game_gridview.dart';
import 'package:funny_tic_tac_toe/widgets/transition_widgets/transition_block.dart';
import 'package:get/get.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/top_block.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(GameController());
    return const Scaffold(
      body: Center(
          child: Stack(
        children: [
          TopBlock(),
          GameGridView(),
          IgnorePointer(
            child: TransitionBlock(),
          )
        ],
      )),
    );
  }
}
