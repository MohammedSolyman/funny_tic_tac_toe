import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:funny_tic_tac_toe/views/home_screen.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    // print('---------------- init start');
    super.initState();

    // Show Status bar and hide Navigation bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    // show in portrait orientation only
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    // When you assure that dimensions controller get the right dimensions,
    // leave the splash screen and go to the home screen
    // DimensionsController dCont = Get.find<DimensionsController>();
    // if (dCont.model.value.height != 0 && dCont.model.value.width != 0)
    // // (MediaQuery.of(context).size.height != 0)

    // {
    //   print('---it is ok, lets to go to home screen');
    //   WidgetsBinding.instance.addPostFrameCallback((_) {
    //     Get.off(() => const HomeScreen());
    //   });
    //   //  Get.off(() => const HomeScreen());
    // }

    // while (dCont.model.value.height == 0 && dCont.model.value.width == 0) {
    //   print('--- dimensions are zeros');
    //   dCont.gettingDeviceDimensions(
    //       width: MediaQuery.of(context).size.width,
    //       height: MediaQuery.of(context).size.height,
    //       statusBarHeight: MediaQuery.of(context).viewPadding.top);
    // }

    // print('---it is ok, lets to go to home screen');
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   Get.off(() => const HomeScreen());
    // });

    // print('---------------- init end');
  }

  @override
  Widget build(BuildContext context) {
    ThemingController thCont = Get.find<ThemingController>();
    DimensionsController dCont = Get.find<DimensionsController>();

    return Obx(
      () {
        if (dCont.model.value.height != 0 && dCont.model.value.width != 0) {
          print('---it is ok, lets to go to home screen');
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Get.off(() => const HomeScreen());
          });
          //  Get.off(() => const HomeScreen());
        } else {
          print('--- dimensions are zeros');
          dCont.gettingDeviceDimensions(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              statusBarHeight: MediaQuery.of(context).viewPadding.top);
        }

        return Scaffold(
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: thCont.model.value.myTheme.primaryGradient),
              ),
            ),
          ),
        );
      },
    );
  }
}
