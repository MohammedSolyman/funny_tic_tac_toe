import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
import 'package:funny_tic_tac_toe/controllers/home_controller.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/bottom_block.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/middle_block/middle_block.dart';
import 'package:funny_tic_tac_toe/widgets/my_background/my_background.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/top_block.dart';
import 'package:funny_tic_tac_toe/widgets/transition_widgets/transition_block.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hCont = Get.find<HomeController>();
    DimensionsController dCont = Get.find<DimensionsController>();

    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      hCont.toPortraitLayout();
      dCont.gettingDeviceDimensions(MediaQuery.of(context).size);
    } else {
      hCont.toLandscapeLayout();
      dCont.gettingDeviceDimensions(MediaQuery.of(context).size);
    }

    return const Scaffold(
        body: Stack(
      children: [
        MyBackground(),
        TopBlock(),
        IgnorePointer(child: BottomBlock()),
        MiddleBlock(),
        IgnorePointer(child: TransitionBlock())
      ],
    ));
  }
}
