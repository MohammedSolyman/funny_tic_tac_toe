import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/game_gridview.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_dialog/barrier.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_dialog/my_dialog.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/panel/panel.dart';
import 'package:funny_tic_tac_toe/widgets/my_background/my_background.dart';
import 'package:funny_tic_tac_toe/widgets/transition_widgets/transition_block.dart';
import 'package:get/get.dart';
import 'package:funny_tic_tac_toe/widgets/top_block/top_block.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(GameController());
    return const SafeArea(
      child: Scaffold(
        body: Center(
            child: Stack(
          children: [
            MyBackground(),
            TopBlock(),
            Panel(),
            GameGridView(),
            Barrier(),
            MyDialog(),
            IgnorePointer(child: TransitionBlock())
          ],
        )),
      ),
    );
  }
}
