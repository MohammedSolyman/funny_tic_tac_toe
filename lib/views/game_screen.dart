import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:funny_tic_tac_toe/widgets/transition_widgets/transition_block.dart';
import 'package:get/get.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GameController gCont = Get.put(GameController());
    return const Scaffold(
      body: Center(
          child: Stack(
        children: [
          Center(
            child: Text('game screen'),
          ),
          IgnorePointer(
            child: TransitionBlock(),
          )
        ],
      )),
    );
  }
}
