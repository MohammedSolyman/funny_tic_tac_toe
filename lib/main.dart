import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/audio_controller.dart';
import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
import 'package:funny_tic_tac_toe/controllers/facebook_ad_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:funny_tic_tac_toe/views/splash_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

/*
git add *
git commit -m  "first commit"
git log --oneline
git push https://github.com/MohammedSolyman/funny_tic_tac_toe.git master


 
override back arrow
notification
*/
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  Get.put(FacebookAdController());
  Get.put(AudioController());
  Get.put(ThemingController());

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    DimensionsController dCont = Get.put(DimensionsController());
    dCont.gettingDeviceDimensions(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        statusBarHeight: MediaQuery.of(context).viewPadding.top);

    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
