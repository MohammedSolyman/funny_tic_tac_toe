import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/audio_controller.dart';
import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
import 'package:funny_tic_tac_toe/controllers/facebook_ad_controller.dart';
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

    Get.put(AudioController());
    Get.put(ThemingController());
    Get.put(TransitionController());
    Get.put(HomeController());
    Get.put(FacebookAdController());

    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
