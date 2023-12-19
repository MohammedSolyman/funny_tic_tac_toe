import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/models/theming_model/my_theming.dart';

class MyLightTheme implements MyTheme {
  //1. top bottom gradient////////////////////////////////////////
  @override
  List<Color> topBottomGradient = [
    const Color.fromARGB(255, 102, 76, 175),
    const Color.fromARGB(255, 128, 106, 206),
  ];

  //2. background /////////////////////////////////////////////////
  @override
  List<Color> backgroundGradient = [
    const Color.fromARGB(255, 102, 76, 175),
    Colors.white,
    const Color.fromARGB(255, 102, 76, 175),
  ];
  @override
  Color backgroundColor = Colors.grey;

  //3. borders /////////////////////////////////////////////////
  @override
  Color borderColor = const Color.fromARGB(255, 51, 34, 97);
  @override
  double borderRadius = 15;
  @override
  double borderWidth = 4;

  //4. shadow color ////////////////////////////////////////////
  @override
  Color shadowColor = Colors.black;

  @override
  Color innerWinningLineColor = Colors.orange;

  @override
  Color outerWinningLineColor = Colors.red;

  @override
  Color bigObodyColor = Colors.red.shade300;

  @override
  Color bigOborderColor = Colors.red;

  @override
  Color bigXbodyColor = Colors.blue.shade300;

  @override
  Color bigXborderColor = Colors.blue;

  @override
  Color oPlyaerBody1 = Colors.yellow;

  @override
  Color oPlyaerBody2 = Colors.deepOrange;

  @override
  Color oPlyaerBorder = Colors.red;

  @override
  Color scoreBody1 = Colors.blueGrey;

  @override
  Color scoreBody2 = Colors.grey;

  @override
  Color scoreBorder = Colors.black;

  @override
  Color xPlyaerBody1 = Colors.blueGrey;

  @override
  Color xPlyaerBody2 = Colors.blue;

  @override
  Color xPlyaerBorder = Colors.deepPurple;
  //7. panel - panel shadow
  @override
  Color panelShadowColor = Colors.black;
}
