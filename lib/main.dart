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
      home: HomeScreen(),
    );
  }
}

// /////////////////////////////////////////////
// class OOO extends StatelessWidget {
//   const OOO({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomPaint(
//         painter: MyPainter(),
//         size: Size(MediaQuery.of(context).size.width,
//             MediaQuery.of(context).size.height),
//       ),
//     );
//   }
// }

// // class MyPainter extends CustomPainter {
// //   @override
// //   void paint(Canvas canvas, Size size) {
// //     BigOOO b = BigOOO(Offset(0, 0));
// //     b.draw(canvas, size);
// //   }

// //   @override
// //   bool shouldRepaint(covariant CustomPainter oldDelegate) {
// //     return true;
// //   }
// // }
