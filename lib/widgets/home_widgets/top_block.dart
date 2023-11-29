import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/home_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:funny_tic_tac_toe/utilities/consts/assets_paths.dart';
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
        painter: MyTopPainter(
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

class MyTopPainter extends CustomPainter {
  double p1x;
  double p1y;
  double controlPoint1x;
  double controlPoint2x;
  double controlPoint2y;

  MyTopPainter(
      {required this.p1x,
      required this.p1y,
      required this.controlPoint1x,
      required this.controlPoint2x,
      required this.controlPoint2y});

  @override
  void paint(Canvas canvas, Size size) {
    ThemingController thCon = Get.find<ThemingController>();

    //dimensions
    double deviceWidth = size.width;
    double deviceHeight = size.height;

    Offset p1 = Offset(deviceWidth * p1x, deviceHeight * p1y);
    Offset p2 = Offset(deviceWidth, deviceHeight * 0.2);
    Offset p3 = Offset(deviceWidth, 0);
    Offset controlPoint1 =
        Offset(deviceWidth * controlPoint1x, deviceHeight * 0.1);
    Offset controlPoint2 =
        Offset(deviceWidth * controlPoint2x, deviceHeight * controlPoint2y);

    //body path
    Path bodyPath = Path();
    bodyPath.lineTo(p1.dx, p1.dy);
    bodyPath.cubicTo(
      controlPoint1.dx,
      controlPoint1.dy,
      controlPoint2.dx,
      controlPoint2.dy,
      p2.dx,
      p2.dy,
    );
    bodyPath.lineTo(p3.dx, p3.dy);
    bodyPath.close();

    //border path
    Path borderPath = Path();
    borderPath.lineTo(p1.dx, p1.dy);
    borderPath.cubicTo(
      controlPoint1.dx,
      controlPoint1.dy,
      controlPoint2.dx,
      controlPoint2.dy,
      p2.dx,
      p2.dy,
    );

    //body paint
    Paint bodyPaint = Paint();
    bodyPaint.color = thCon.model.value.myTheme.bgColor2;
    bodyPaint.style = PaintingStyle.fill;

    //border paint
    Paint borderPaint = Paint();
    borderPaint.color = thCon.model.value.myTheme.borderColor;
    borderPaint.style = PaintingStyle.stroke;
    borderPaint.strokeWidth = thCon.model.value.myTheme.borderWidth;

    //draw
    canvas.drawPath(bodyPath, bodyPaint);
    canvas.drawPath(borderPath, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

// import 'package:flutter/material.dart';
// import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
// import 'package:get/get.dart';

// class TopBlock extends StatelessWidget {
//   const TopBlock({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return CustomPaint(
//       painter: MyTopPainter(),
//       size: Size(width, height),
//     );
//   }
// }

// class MyTopPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     ThemingController thCon = Get.find<ThemingController>();

//     //dimensions
//     double deviceWidth = size.width;
//     double deviceHeight = size.height;

//     Offset p1 = Offset(deviceWidth * 0.8, 0); //changed
//     Offset p2 = Offset(deviceWidth, deviceHeight * 0.2);
//     Offset p3 = Offset(deviceWidth, 0);
//     Offset controlPoint1 =
//         Offset(deviceWidth * 0.90, deviceHeight * 0.10); //changed
//     Offset controlPoint2 =
//         Offset(deviceWidth * 1, deviceHeight * 0.20); //changed

//     //body path
//     Path bodyPath = Path();
//     bodyPath.lineTo(p1.dx, p1.dy);
//     bodyPath.cubicTo(
//       controlPoint1.dx,
//       controlPoint1.dy,
//       controlPoint2.dx,
//       controlPoint2.dy,
//       p2.dx,
//       p2.dy,
//     );

//     bodyPath.lineTo(p3.dx, p3.dy);
//     bodyPath.close();

//     //border path
//     Path borderPath = Path();
//     borderPath.moveTo(p1.dx, p1.dy);
//     borderPath.cubicTo(
//       controlPoint1.dx,
//       controlPoint1.dy,
//       controlPoint2.dx,
//       controlPoint2.dy,
//       p2.dx,
//       p2.dy,
//     );

//     //body paint
//     Paint bodyPaint = Paint();
//     bodyPaint.color = thCon.model.value.myTheme.bgColor2;
//     bodyPaint.style = PaintingStyle.fill;

//     //border paint
//     Paint borderPaint = Paint();
//     borderPaint.color = thCon.model.value.myTheme.borderColor;
//     borderPaint.style = PaintingStyle.stroke;
//     borderPaint.strokeWidth = thCon.model.value.myTheme.borderWidth;

//     //draw
//     canvas.drawPath(bodyPath, bodyPaint);
//     canvas.drawPath(borderPath, borderPaint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
