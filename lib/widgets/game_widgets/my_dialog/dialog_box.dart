import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    // DimensionsController dCont = Get.find<DimensionsController>();
    GameController gCont = Get.find<GameController>();
    ThemingController thCont = Get.find<ThemingController>();
    return Obx(
      () {
        return Center(
          child: CustomPaint(
            painter: DialogBoxPaint(
                bodyColor: thCont.model.value.myTheme.bgColor2,
                borderColor: thCont.model.value.myTheme.borderColor,
                bubbleBodyColor: Colors.orange,
                bubbleBorderColor: Colors.red,
                textColor: Colors.yellow,
                text: 'x wins'),
            size: Size(
                gCont.model.value.dialogWidth, gCont.model.value.dialogHeight),
          ),
        );
      },
    );
  }
}

class DialogBoxPaint extends CustomPainter {
  DialogBoxPaint(
      {required this.borderColor,
      required this.bodyColor,
      required this.textColor,
      required this.bubbleBorderColor,
      required this.bubbleBodyColor,
      required this.text});

  Color borderColor;
  Color bodyColor;
  Color textColor;
  Color bubbleBorderColor;
  Color bubbleBodyColor;
  String text;

  @override
  void paint(Canvas canvas, Size size) {
    //dimensions
    double width = size.width;
    double height = size.height;

    //first line
    Offset a1 = const Offset(0, 0);
    Offset b1 = Offset(width, height * 0.025);
    Rect rect1 = Rect.fromPoints(a1, b1);

    //box
    Offset a2 = Offset(0, height * 0.05);
    Offset b2 = Offset(width, height * 0.965);
    Rect rect2 = Rect.fromPoints(a2, b2);
    RRect rrect2 = RRect.fromRectAndRadius(rect2, const Radius.circular(15));

    //second line
    Offset a3 = Offset(0, height * 0.99);
    Offset b3 = Offset(width, height);
    Rect rect3 = Rect.fromPoints(a3, b3);

    //text border ///////////////////////////////////////////////
    //text border paint
    Paint textBorder = Paint();
    textBorder.color = Colors.black;
    textBorder.style = PaintingStyle.stroke;
    textBorder.strokeWidth = 3;

    //text border span
    TextSpan textBorderSpan = TextSpan(
      text: text,
      style: GoogleFonts.rubikBubbles(
        fontSize: 30,
        foreground: textBorder,
      ),
    );

    //text border painter
    TextPainter textBorderPainter = TextPainter(
      text: textBorderSpan,
      textDirection: TextDirection.ltr,
    );

    //text border layout
    textBorderPainter.layout();

    //text border position
    Offset textBorderPosition =
        Offset((width - textBorderPainter.width) * 0.5, height * 0.2);

    //text body //////////////////////////////////////////////////
    //text body paint
    Paint textBody = Paint();
    textBody.shader = const LinearGradient(colors: [Colors.red, Colors.yellow])
        .createShader(Rect.fromCircle(
            center: Offset(width * 0.5, height * 0.5), radius: 100));
    textBody.style = PaintingStyle.fill;

    //text body span
    TextSpan textBodySpan = TextSpan(
      text: text,
      style: GoogleFonts.rubikBubbles(
        fontSize: 30,
        foreground: textBody,
      ),
    );

    //text body painter
    TextPainter textBodyPainter = TextPainter(
      text: textBodySpan,
      textDirection: TextDirection.ltr,
    );

    //text body layout
    textBodyPainter.layout();

    //text body position
    Offset textBodyPosition =
        Offset((width - textBodyPainter.width) * 0.5, height * 0.2);

    //paints////////////////////////////////////////////////////
    //border paint
    Paint borderPaint = Paint();
    borderPaint.color = borderColor;
    borderPaint.style = PaintingStyle.stroke;
    borderPaint.strokeWidth = 4;

    //body paint
    Paint bodyPaint = Paint();
    bodyPaint.color = bodyColor;
    bodyPaint.style = PaintingStyle.fill;

    //drawing////////////////////////////////////////////////////

    //drawing bodies
    canvas.drawRect(rect1, bodyPaint);
    canvas.drawRRect(rrect2, bodyPaint);
    canvas.drawRect(rect3, bodyPaint);

    //drawing borders
    canvas.drawRect(rect1, borderPaint);
    canvas.drawRRect(rrect2, borderPaint);
    canvas.drawRect(rect3, borderPaint);

    //drawing text
    textBorderPainter.paint(canvas, textBorderPosition);
    textBodyPainter.paint(canvas, textBodyPosition);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
