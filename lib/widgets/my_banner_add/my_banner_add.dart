import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/facebook_ad_controller.dart';
import 'package:get/get.dart';

class MyBannerAd extends StatelessWidget {
  const MyBannerAd({super.key});

  @override
  Widget build(BuildContext context) {
    FacebookAdController fCont = Get.find<FacebookAdController>();
    return Align(
      alignment: Alignment.bottomCenter,
      child: fCont.getBannerAd(),
    );
  }
}
