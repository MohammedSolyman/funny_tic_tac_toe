// import 'package:flutter/material.dart';
// import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// class ContinueButton extends StatelessWidget {
//   const ContinueButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     DimensionsController dCont = Get.find<DimensionsController>();
//     return Obx(
//       () {
//         return Center(
//           child: GestureDetector(
//             onTap: () {
//               print('tapped');
//             },
//             child: CustomPaint(
//               painter: ContinueButtonPaint(),
//               size: Size(dCont.model.value.width, dCont.model.value.height),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class ContinueButtonPaint extends CustomPainter {
//   ContinueButtonPaint();

//   @override
//   void paint(Canvas canvas, Size size) {
//     //dimensions
//     double widthUnit = size.width / 100;
//     double heightUnit = size.height / 100;

//     //text border ///////////////////////////////////////////////
//     //text border paint
//     Paint textBorder = Paint();
//     textBorder.color = Colors.black;
//     textBorder.style = PaintingStyle.stroke;
//     textBorder.strokeWidth = 3;

//     //text border span
//     TextSpan textBorderSpan = TextSpan(
//       text: 'continue',
//       style: GoogleFonts.lobster(
//         fontSize: 30,
//         foreground: textBorder,
//       ),
//     );

//     //text border painter
//     TextPainter textBorderPainter = TextPainter(
//       text: textBorderSpan,
//       textDirection: TextDirection.ltr,
//     );

//     //text border layout
//     textBorderPainter.layout();

//     //text border position
//     Offset textBorderPosition =
//         Offset((widthUnit * 50 - textBorderPainter.width - 5), heightUnit * 25);

//     //text body //////////////////////////////////////////////////
//     //text body paint
//     Paint textBody = Paint();
//     textBody.shader = LinearGradient(colors: [Colors.red, Colors.yellow])
//         .createShader(Rect.fromCircle(
//             center: Offset(widthUnit * 50, heightUnit * 50), radius: 100));
//     textBody.style = PaintingStyle.fill;

//     //text body span
//     TextSpan textBodySpan = TextSpan(
//       text: 'continue',
//       style: GoogleFonts.lobster(
//         fontSize: 30,
//         foreground: textBody,
//       ),
//     );

//     //text body painter
//     TextPainter textBodyPainter = TextPainter(
//       text: textBodySpan,
//       textDirection: TextDirection.ltr,
//     );

//     //text body layout
//     textBodyPainter.layout();

//     //text body position
//     Offset textBodyPosition =
//         Offset((widthUnit * 50 - textBorderPainter.width - 5), heightUnit * 25);

//     //drawing////////////////////////////////////////////////////
//     textBorderPainter.paint(canvas, textBorderPosition);
//     textBodyPainter.paint(canvas, textBodyPosition);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
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
      onTap: () {},
      child: Stack(
        children: [
          Text(
            'CONTINUE',
            style: GoogleFonts.creepster(fontSize: 30, foreground: bodyPaint),
          ),
          Text(
            'CONTINUE',
            style: GoogleFonts.creepster(fontSize: 30, foreground: borderPaint),
          ),
        ],
      ),
    );
  }
}
