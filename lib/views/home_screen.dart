import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/home_controller.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/bottom_block.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/middle_block.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/my_background.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/top_block.dart';
import 'package:funny_tic_tac_toe/widgets/transition_widgets/transition_block.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hCont = Get.find<HomeController>();

    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      hCont.toPortraitLayout();
    } else {
      hCont.toLandscapeLayout();
    }
    return const Scaffold(
        body: Stack(
      children: [
        MyBackground(),
        TopBlock(),
        BottomBlock(),
        MiddleBlock(),
        IgnorePointer(child: TransitionBlock())
      ],
    ));
  }
}
