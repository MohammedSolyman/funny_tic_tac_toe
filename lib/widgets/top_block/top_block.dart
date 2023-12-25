import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/home_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:funny_tic_tac_toe/utilities/assets_paths.dart';
import 'package:funny_tic_tac_toe/widgets/top_block/top_block_painter.dart';
import 'package:get/get.dart';

class TopBlock extends StatelessWidget {
  const TopBlock({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hCont = Get.find<HomeController>();
    ThemingController thCont = Get.find<ThemingController>();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Obx(() {
      return CustomPaint(
        painter: TopBlockPainter(
          p1x: hCont.model.value.p1x,
          p1y: hCont.model.value.p1y,
          controlPoint1x: hCont.model.value.controlPoint1x,
          controlPoint2x: hCont.model.value.controlPoint2x,
          controlPoint2y: hCont.model.value.controlPoint2y,
        ),
        size: Size(width, height),
        child: Align(
          alignment: Alignment.topRight,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  thCont.toggleThemingMode();
                },
                child: Image.asset(
                  AssetsPaths.sun,
                  color: thCont.model.value.myTheme.borderColor,
                ),
              ),
              GestureDetector(
                child: Image.asset(
                  AssetsPaths.audio,
                  color: thCont.model.value.myTheme.borderColor,
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
