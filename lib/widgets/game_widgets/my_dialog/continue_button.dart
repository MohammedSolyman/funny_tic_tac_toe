import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    GameController gCont = Get.find<GameController>();
    //border paint
    Paint borderPaint = Paint();
    borderPaint.color = Colors.black;
    borderPaint.style = PaintingStyle.stroke;
    borderPaint.strokeWidth = 3;

    //body paint
    Paint bodyPaint = Paint();
    bodyPaint.shader = const LinearGradient(colors: [Colors.red, Colors.yellow])
        .createShader(
            Rect.fromCircle(center: const Offset(20, 20), radius: 100));
    bodyPaint.style = PaintingStyle.fill;

    return GestureDetector(
      onTap: () {
        gCont.continueFunction();
      },
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.red)),
        child: Stack(
          children: [
            IgnorePointer(
              child: Text(
                'CONTINUE',
                style:
                    GoogleFonts.creepster(fontSize: 30, foreground: bodyPaint),
              ),
            ),
            IgnorePointer(
              child: Text(
                'CONTINUE',
                style: GoogleFonts.creepster(
                    fontSize: 30, foreground: borderPaint),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
