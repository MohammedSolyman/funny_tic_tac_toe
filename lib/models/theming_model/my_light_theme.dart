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

  //5. big x = x-player in panel /////////////////////////////////
  @override
  List<Color> xBorderGradient = [
    const Color.fromARGB(255, 9, 48, 108),
    const Color.fromARGB(255, 14, 81, 181),
  ];
  @override
  List<Color> xBodyGradient = [
    Colors.cyan.shade900,
    Colors.cyan.shade400,
  ];

  //6. big o = o-player in panel////////////////////////////
  @override
  List<Color> oBorderGradient = [
    Colors.red.shade900,
    Colors.red,
  ];
  @override
  List<Color> oBodyGradient = [
    Colors.red,
    Colors.orange,
  ];

  //7. black-white gradient////////////////////////////////////////
  @override
  List<Color> blackWhieBorderGradient = [
    Colors.black,
    Colors.black,
  ];
  @override
  List<Color> blackWhieBodyGradient = [
    Colors.grey.shade800,
    Colors.grey.shade600,
  ];

  //8 . winning connecting line = moving dash///////////////////
  @override
  Color innerLineColor = Colors.orange;
  @override
  Color outerLineColor = Colors.red;

  //9. panel - score /////////////////////////////////////////
  @override
  Color scoreBody1 = Colors.blueGrey;
  @override
  Color scoreBody2 = Colors.grey;
  @override
  Color scoreBorder = Colors.black;

  //10 dialog
  @override
  Color dialogBackground = Colors.grey;
}
