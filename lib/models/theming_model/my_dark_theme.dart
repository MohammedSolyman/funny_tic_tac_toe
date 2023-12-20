import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/models/theming_model/my_theming.dart';

class MyDarkTheme implements MyTheme {
  //1. top bottom gradient////////////////////////////////////////
  @override
  List<Color> topBottomGradient = [
    Colors.black,
    Colors.grey.shade900,
  ];

  //2. background gradient /////////////////////////////////////
  @override
  List<Color> backgroundGradient = [
    Colors.black,
    Colors.grey.shade700,
    Colors.black,
  ];
  @override
  Color backgroundColor = const Color.fromARGB(255, 34, 33, 33);

  //3. borders /////////////////////////////////////////////////
  @override
  Color borderColor = Colors.purple.shade800;
  @override
  double borderRadius = 15;
  @override
  double borderWidth = 4;

  //4. shadow color ////////////////////////////////////////////
  @override
  Color shadowColor = Colors.white;

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
  Color innerLineColor = Colors.white;
  @override
  Color outerLineColor = Colors.grey;

  //9. panel - score /////////////////////////////////////////
  @override
  Color scoreBody1 = Colors.blueGrey;
  @override
  Color scoreBody2 = Colors.grey;
  @override
  Color scoreBorder = Colors.black;

  //10 dialog
  @override
  List<Color> dialogBackgroundGradient = [
    Colors.grey.shade800,
    Colors.grey.shade600,
  ];
  @override
  Color textColor = Colors.yellow;
  @override
  Color bubbleBodyColor = Colors.red;
  @override
  Color bubbleBorderColor = Colors.black;
}
