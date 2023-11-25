import 'package:flutter/material.dart';
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
  Get.put(TransitionController());

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    TransitionController tCont = Get.find<TransitionController>();
    double weight = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    tCont.initializeTransitionList(
        sticksNumber: 10, deviceWidth: weight, deviceHeight: height);

    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
