import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/home_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:funny_tic_tac_toe/controllers/transition_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hCont = Get.find<HomeController>();
    TransitionController tCont = Get.find<TransitionController>();
    ThemingController thCont = Get.find<ThemingController>();

    //border paint
    Paint borderPaint = Paint();
    borderPaint.color = Colors.black;
    borderPaint.style = PaintingStyle.stroke;
    borderPaint.strokeWidth = 3;

    //body paint
    Paint bodyPaint = Paint();
    bodyPaint.shader = LinearGradient(colors: [
      thCont.model.value.myTheme.playButtonColor,
      thCont.model.value.myTheme.playButtonColor
    ]).createShader(Rect.fromCircle(center: const Offset(20, 20), radius: 100));
    bodyPaint.style = PaintingStyle.fill;

    return Obx(() {
      return GestureDetector(
        onTap: () {
          tCont.fireTransitionAnimation();
          hCont.goToGame();
        },
        child: Stack(
          children: [
            Text(
              'PLAY',
              style: GoogleFonts.creepster(
                  fontSize: 45,
                  foreground: bodyPaint,
                  shadows: [
                    Shadow(
                        blurRadius: 5,
                        color: thCont.model.value.myTheme.shadowColor,
                        //color: shadowColor,
                        offset: const Offset(3, 3))
                  ]),
            ),
            Text(
              'PLAY',
              style: GoogleFonts.creepster(
                fontSize: 45,
                foreground: borderPaint,
              ),
            ),
          ],
        ),
      );
    });
  }
}
