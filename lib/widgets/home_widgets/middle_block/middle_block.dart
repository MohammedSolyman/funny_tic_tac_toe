import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/middle_block/option1.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/middle_block/option2.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/middle_block/play_button.dart';

class MiddleBlock extends StatelessWidget {
  const MiddleBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Option1(),
          Option2(),
          PlayButton(),
        ],
      ),
    );
  }
}
