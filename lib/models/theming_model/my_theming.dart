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

  //4. big x
  late Color bigXborderColor;
  late Color bigXbodyColor;
  //5. big o
  late Color bigOborderColor;
  late Color bigObodyColor;
  //6. winning connecting line
  late Color innerWinningLineColor;
  late Color outerWinningLineColor;
  //7. panel - panel shadow
  late Color panelShadowColor;
  //8. panel - x player
  late Color xPlyaerBorder;
  late Color xPlyaerBody1;
  late Color xPlyaerBody2;
  //9. panel - o player
  late Color oPlyaerBorder;
  late Color oPlyaerBody1;
  late Color oPlyaerBody2;
  //10. panel - score
  late Color scoreBorder;
  late Color scoreBody1;
  late Color scoreBody2;
}
