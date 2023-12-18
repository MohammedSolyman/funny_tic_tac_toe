import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/audio_controller.dart';
import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
import 'package:funny_tic_tac_toe/controllers/home_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:funny_tic_tac_toe/controllers/transition_controller.dart';
import 'package:funny_tic_tac_toe/views/home_screen.dart';
import 'package:get/get.dart';

/*
git add *
git commit -m  "first commit"
git log --oneline
git push https://github.com/MohammedSolyman/funny_tic_tac_toe.git master
*/
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    DimensionsController dCont = Get.put(DimensionsController());
    dCont.gettingDeviceDimensions(MediaQuery.of(context).size);

    Get.put(ThemingController());
    Get.put(TransitionController());
    Get.put(AudioController());
    Get.put(HomeController());

    return const GetMaterialApp(
      //  home: HomeScreen(),
      home: MyTest(),
    );
  }
}

class MyTest extends StatelessWidget {
  const MyTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey,
          child: CustomPaint(
            painter: MyPainter(),
            size: Size(
              MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height,
            ),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //border paint
    Paint borderPaint = Paint();
    borderPaint.color = Colors.black;
    borderPaint.style = PaintingStyle.stroke;
    borderPaint.strokeWidth = 7;

    //body paint
    Paint bodyPaint = Paint();
    bodyPaint.color = Colors.red;
    bodyPaint.style = PaintingStyle.fill;

    //path
    Path path1 = oPath1(size);
    Path path2 = oPath2(size);
    Path path3 = oPath3(size);
    Path path4 = oPath4(size);

    //clipped path
    Path clippedPath = Path.combine(PathOperation.difference, path1, path2);

    //drawing
    //clipped path
    canvas.drawPath(clippedPath, bodyPaint);

    //path1
    // canvas.drawPath(path1, borderFillPaint);
    canvas.drawPath(path1, borderPaint);

    //path2
    canvas.drawPath(path2, borderPaint);

    //path3
    canvas.drawPath(path3, borderPaint);

    //path4
    canvas.drawPath(path4, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

Path oPath1(Size size) {
  Path path = Path();
  final double _xScaling = size.width / 1000;
  final double _yScaling = size.height / 1000;
  path.moveTo(420 * _xScaling, 881 * _yScaling);
  path.cubicTo(
    339 * _xScaling,
    855 * _yScaling,
    291 * _xScaling,
    807 * _yScaling,
    271 * _xScaling,
    735 * _yScaling,
  );
  path.cubicTo(
    257 * _xScaling,
    683 * _yScaling,
    257 * _xScaling,
    317 * _yScaling,
    271 * _xScaling,
    265 * _yScaling,
  );
  path.cubicTo(
    286 * _xScaling,
    210 * _yScaling,
    323 * _xScaling,
    164 * _yScaling,
    373 * _xScaling,
    138 * _yScaling,
  );
  path.cubicTo(
    436 * _xScaling,
    104 * _yScaling,
    568 * _xScaling,
    106 * _yScaling,
    630 * _xScaling,
    140 * _yScaling,
  );
  path.cubicTo(
    679 * _xScaling,
    168 * _yScaling,
    714 * _xScaling,
    213 * _yScaling,
    730 * _xScaling,
    269 * _yScaling,
  );
  path.cubicTo(
    743 * _xScaling,
    316 * _yScaling,
    743 * _xScaling,
    684 * _yScaling,
    730 * _xScaling,
    731 * _yScaling,
  );
  path.cubicTo(
    703 * _xScaling,
    828 * _yScaling,
    633 * _xScaling,
    879 * _yScaling,
    517 * _xScaling,
    886 * _yScaling,
  );
  path.cubicTo(
    478 * _xScaling,
    888 * _yScaling,
    434 * _xScaling,
    886 * _yScaling,
    420 * _xScaling,
    881 * _yScaling,
  );
  path.cubicTo(
    420 * _xScaling,
    881 * _yScaling,
    420 * _xScaling,
    881 * _yScaling,
    420 * _xScaling,
    881 * _yScaling,
  );
  return path;
}

Path oPath2(Size size) {
  Path path = Path();
  final double _xScaling = size.width / 1000;
  final double _yScaling = size.height / 1000;
  path.moveTo(559 * _xScaling, 756 * _yScaling);
  path.cubicTo(
    605 * _xScaling,
    732 * _yScaling,
    610 * _xScaling,
    705 * _yScaling,
    610 * _xScaling,
    499 * _yScaling,
  );
  path.cubicTo(
    610 * _xScaling,
    354 * _yScaling,
    607 * _xScaling,
    302 * _yScaling,
    596 * _xScaling,
    281 * _yScaling,
  );
  path.cubicTo(
    561 * _xScaling,
    213 * _yScaling,
    440 * _xScaling,
    212 * _yScaling,
    405 * _xScaling,
    279 * _yScaling,
  );
  path.cubicTo(
    383 * _xScaling,
    323 * _yScaling,
    383 * _xScaling,
    677 * _yScaling,
    406 * _xScaling,
    721 * _yScaling,
  );
  path.cubicTo(
    430 * _xScaling,
    769 * _yScaling,
    502 * _xScaling,
    785 * _yScaling,
    559 * _xScaling,
    756 * _yScaling,
  );
  path.cubicTo(
    559 * _xScaling,
    756 * _yScaling,
    559 * _xScaling,
    756 * _yScaling,
    559 * _xScaling,
    756 * _yScaling,
  );
  return path;
}

Path oPath3(Size size) {
  Path path = Path();
  final double _xScaling = size.width / 1000;
  final double _yScaling = size.height / 1000;
  path.moveTo(322 * _xScaling, 645 * _yScaling);
  path.cubicTo(
    322 * _xScaling,
    629 * _yScaling,
    324 * _xScaling,
    623 * _yScaling,
    327 * _xScaling,
    633 * _yScaling,
  );
  path.cubicTo(
    329 * _xScaling,
    642 * _yScaling,
    329 * _xScaling,
    656 * _yScaling,
    327 * _xScaling,
    663 * _yScaling,
  );
  path.cubicTo(
    324 * _xScaling,
    669 * _yScaling,
    322 * _xScaling,
    662 * _yScaling,
    322 * _xScaling,
    645 * _yScaling,
  );
  path.cubicTo(
    322 * _xScaling,
    645 * _yScaling,
    322 * _xScaling,
    645 * _yScaling,
    322 * _xScaling,
    645 * _yScaling,
  );
  return path;
}

Path oPath4(Size size) {
  Path path = Path();
  final double _xScaling = size.width / 1000;
  final double _yScaling = size.height / 1000;
  path.moveTo(324 * _xScaling, 445 * _yScaling);
  path.cubicTo(
    324 * _xScaling,
    363 * _yScaling,
    326 * _xScaling,
    330 * _yScaling,
    327 * _xScaling,
    373 * _yScaling,
  );
  path.cubicTo(
    329 * _xScaling,
    416 * _yScaling,
    329 * _xScaling,
    483 * _yScaling,
    327 * _xScaling,
    523 * _yScaling,
  );
  path.cubicTo(
    326 * _xScaling,
    563 * _yScaling,
    324 * _xScaling,
    528 * _yScaling,
    324 * _xScaling,
    445 * _yScaling,
  );
  path.cubicTo(
    324 * _xScaling,
    445 * _yScaling,
    324 * _xScaling,
    445 * _yScaling,
    324 * _xScaling,
    445 * _yScaling,
  );
  return path;
}
