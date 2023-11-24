import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/bottom_block.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/middle_block.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/my_background.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/top_block.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
      children: [
        MyBackground(),
        TopBlock(),
        BottomBlock(),
        MiddleBlock(),
      ],
    ));
  }
}
