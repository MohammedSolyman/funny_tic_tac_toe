import 'package:flutter/material.dart';
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
    DimensionsController dCont = Get.find<DimensionsController>();

    if (dCont.model.value.height != 0 && dCont.model.value.width != 0) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Get.off(() => const HomeScreen());
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemingController thCont = Get.find<ThemingController>();
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
  }
}
