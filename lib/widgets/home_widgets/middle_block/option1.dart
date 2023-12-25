import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/home_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:funny_tic_tac_toe/utilities/assets_paths.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Option1 extends StatelessWidget {
  const Option1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemingController thCont = Get.find<ThemingController>();
    HomeController hCont = Get.find<HomeController>();

    double width = MediaQuery.of(context).size.width;
    return Obx(() {
      return Transform.scale(
        scale: hCont.model.value.withAi ? 1 : 0.9,
        child: GestureDetector(
          onTap: () {
            hCont.withRobotMode();
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: thCont.model.value.myTheme.topBottomGradient),
                border: Border.all(
                  color: thCont.model.value.myTheme.borderColor,
                  width: thCont.model.value.myTheme.borderWidth,
                ),
                borderRadius: BorderRadius.circular(
                    thCont.model.value.myTheme.borderRadius),
                boxShadow: hCont.model.value.withAi
                    ? [
                        BoxShadow(
                            color: thCont.model.value.myTheme.shadowColor,
                            blurRadius: 4,
                            blurStyle: BlurStyle.normal,
                            offset: const Offset(4, 4),
                            spreadRadius: 1),
                      ]
                    : []),
            child: SizedBox(
              width: width * 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Image.asset(AssetsPaths.person),
                  Image.asset(AssetsPaths.person),
                  Text(
                    'vs',
                    style: GoogleFonts.creepster(
                        color: thCont.model.value.myTheme.borderColor,
                        fontSize: 20),
                  ),
                  Image.asset(AssetsPaths.robot2),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
