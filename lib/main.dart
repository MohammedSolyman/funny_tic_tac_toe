import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/audio_controller.dart';
import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
import 'package:funny_tic_tac_toe/controllers/facebook_ad_controller.dart';
import 'package:funny_tic_tac_toe/controllers/home_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:funny_tic_tac_toe/controllers/transition_controller.dart';
import 'package:funny_tic_tac_toe/views/home_screen.dart';
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
  //await Future.delayed(const Duration(seconds: 5));
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
        height: MediaQuery.of(context).size.height);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomeScreen(),
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  Splash({super.key});

  Color myColor = Colors.amber;
  @override
  Widget build(BuildContext context) {
    DimensionsController dCont = Get.find<DimensionsController>();

    return Scaffold(
      body: Obx(() {
        if (dCont.model.value.height != 0 && dCont.model.value.width != 0) {
          myColor = Colors.green;
          // Get.to(() => HomeScreen());
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        }
        return Scaffold(
          body: Container(
            color: myColor,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'))),
          ),
        );
      }),
    );
  }
}
