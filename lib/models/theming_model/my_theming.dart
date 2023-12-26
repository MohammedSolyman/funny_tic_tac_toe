import 'package:flutter/material.dart';

class MyTheme {
  //1. top bottom gradient = score in panel  /////////////////////
  //  = options in home page = dialog background//////////////////
  late List<Color> primaryGradient;

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

  //9 dialog
  late Color textColor;
  late Color bubbleBodyColor;
  late Color bubbleBorderColor;

  //10
  late Color playButtonColor;
}
