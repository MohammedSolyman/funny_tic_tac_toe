import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/bottom_block.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/middle_block.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/top_block.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
      children: [
        MyBackground(),
        TopBlock(),
        MiddleBlock(), //done
        BottomBlock(),
      ],
    ));
  }
}

class MyBackground extends StatelessWidget {
  const MyBackground({super.key});

  @override
  Widget build(BuildContext context) {
    ThemingController themingController = Get.put(ThemingController());

    return Obx(() => Container(
          color: themingController.model.value.myTheme.bgColor1,
        ));
  }
}
