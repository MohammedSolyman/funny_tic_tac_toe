import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/bottom_block/bottom_block.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/middle_block/middle_block.dart';
import 'package:funny_tic_tac_toe/widgets/my_background/my_background.dart';
import 'package:funny_tic_tac_toe/widgets/top_block/top_block.dart';
import 'package:funny_tic_tac_toe/widgets/transition_widgets/transition_block.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return const SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          MyBackground(),
          TopBlock(),
          IgnorePointer(child: BottomBlock()),
          MiddleBlock(),
          IgnorePointer(child: TransitionBlock())
        ],
      )),
    );
  }
}
