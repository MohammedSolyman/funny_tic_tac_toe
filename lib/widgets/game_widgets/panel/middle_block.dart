import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/panel/dots.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/panel/o_score.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/panel/x_score.dart';

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
