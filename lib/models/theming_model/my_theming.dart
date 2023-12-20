import 'package:flutter/material.dart';

class MyTheme {
  //1. top bottom gradient////////////////////////////////////////
  late List<Color> topBottomGradient;

  //2. background /////////////////////////////////////////////////
  late List<Color> backgroundGradient;
  late Color backgroundColor;

  //3. borders
  late Color borderColor;
  late double borderWidth;
  late double borderRadius;

  //4. shadow color
  late Color shadowColor;

  //5. big x = x-player in panel
  late List<Color> xBorderGradient;
  late List<Color> xBodyGradient;

  //6. big o = o-player in panel
  late List<Color> oBorderGradient;
  late List<Color> oBodyGradient;

  //7. black-white gradient
  late List<Color> blackWhieBorderGradient;
  late List<Color> blackWhieBodyGradient;

  //8 . winning connecting line = moving dash ng the panel
  late Color innerLineColor;
  late Color outerLineColor;

  //9. panel - score
  late Color scoreBorder;
  late Color scoreBody1;
  late Color scoreBody2;

  //10 dialog
  late List<Color> dialogBackgroundGradient;
  late Color textColor;
  late Color bubbleBodyColor;
  late Color bubbleBorderColor;
}
