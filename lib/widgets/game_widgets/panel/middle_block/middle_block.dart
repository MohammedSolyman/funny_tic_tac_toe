import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/panel/middle_block/dots.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/panel/middle_block/o_score.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/panel/middle_block/x_score.dart';

class MiddleBlock extends StatelessWidget {
  const MiddleBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        XScore(),
        Dots(),
        OScore(),
      ],
    );
  }
}
