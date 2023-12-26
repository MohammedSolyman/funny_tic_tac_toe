import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/models/theming_model/my_theming.dart';
import 'package:get/get.dart';

// class MyLightTheme implements MyTheme {
//   //1. top bottom gradient////////////////////////////////////////
//   @override
//   List<Color> primaryGradient = [
//     const Color.fromARGB(255, 102, 76, 175),
//     const Color.fromARGB(255, 128, 106, 206),
//   ];

//   //2. background /////////////////////////////////////////////////
//   @override
//   List<Color> backgroundGradient = [
//     const Color.fromARGB(255, 102, 76, 175),
//     Colors.white,
//     const Color.fromARGB(255, 102, 76, 175),
//   ];
//   @override
//   Color backgroundColor = Colors.grey;

//   //3. borders /////////////////////////////////////////////////
//   @override
//   Color borderColor = const Color.fromARGB(255, 51, 34, 97);
//   @override
//   double borderRadius = 15;
//   @override
//   double borderWidth = 4;

//   //4. shadow color ////////////////////////////////////////////
//   @override
//   Color shadowColor = Colors.black;

//   //5. big x = x-player in panel /////////////////////////////////
//   @override
//   List<Color> xBorderGradient = [
//     const Color.fromARGB(255, 9, 48, 108),
//     const Color.fromARGB(255, 14, 81, 181),
//   ];
//   @override
//   List<Color> xBodyGradient = [
//     Colors.cyan.shade900,
//     Colors.cyan.shade400,
//   ];

//   //6. big o = o-player in panel////////////////////////////
//   @override
//   List<Color> oBorderGradient = [
//     Colors.red.shade900,
//     Colors.red,
//   ];
//   @override
//   List<Color> oBodyGradient = [
//     Colors.red,
//     Colors.orange,
//   ];

//   //7. black-white gradient////////////////////////////////////////
//   @override
//   List<Color> blackWhieBorderGradient = [
//     Colors.black,
//     Colors.black,
//   ];
//   @override
//   List<Color> blackWhieBodyGradient = [
//     Colors.grey.shade800,
//     Colors.grey.shade600,
//   ];

//   //8 . winning connecting line = moving dash///////////////////
//   @override
//   Color innerLineColor = Colors.orange;
//   @override
//   Color outerLineColor = Colors.red;

//   //9. panel - score /////////////////////////////////////////
//   @override
//   Color scoreBody1 = Colors.blueGrey;
//   @override
//   Color scoreBody2 = Colors.grey;
//   @override
//   Color scoreBorder = Colors.black;

//   //10 dialog
//   @override
//   List<Color> primaryGradient = [
//     Colors.grey.shade800,
//     Colors.grey.shade600,
//   ];
//   @override
//   Color textColor = Colors.yellow;
//   @override
//   Color bubbleBodyColor = Colors.red;
//   @override
//   Color bubbleBorderColor = Colors.black;
// }

class MyLightTheme implements MyTheme {
  //1. top bottom gradient = score in panel  /////////////////////
  //  = options in home page = dialog background//////////////////
  @override
  List<Color> primaryGradient = [
    MyBlue.mcgpalette0Accent.shade100,
    MyBlue.mcgpalette0Accent.shade200,

    // MyBlue.mcgpalette0.shade400,
    // MyBlue.mcgpalette0.shade500,
  ];

  //2. background /////////////////////////////////////////////////
  @override
  List<Color> backgroundGradient = [
    MyBlue.mcgpalette0.shade200,
    MyBlue.mcgpalette0.shade50,
    MyBlue.mcgpalette0.shade200,
  ];
  @override
  Color backgroundColor = MyBlue.mcgpalette0.shade300;

  //3. borders /////////////////////////////////////////////////
  @override
  Color borderColor = MyBlue.mcgpalette0.shade900;
  @override
  double borderRadius = 15;
  @override
  double borderWidth = 4;

  //4. shadow color ////////////////////////////////////////////
  @override
  Color shadowColor = MyBlue.mcgpalette0.shade900;

  //5. big x = x-player in panel /////////////////////////////////
  @override
  List<Color> xBorderGradient = [
    MyGreen.mcgpalette0.shade800,
    MyGreen.mcgpalette0.shade900,
  ];
  @override
  List<Color> xBodyGradient = [
    MyGreen.mcgpalette0.shade400,
    MyGreen.mcgpalette0.shade500,
  ];

  //6. big o = o-player in panel////////////////////////////
  @override
  List<Color> oBorderGradient = [
    MyPink.mcgpalette0.shade800,
    MyPink.mcgpalette0.shade900,
  ];

  @override
  List<Color> oBodyGradient = [
    MyPink.mcgpalette0.shade400,
    MyPink.mcgpalette0.shade500,
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
  Color innerLineColor = Colors.redAccent.shade200;
  @override
  Color outerLineColor = Colors.red.shade800;

  //10 dialog

  @override
  Color textColor = MyPink.mcgpalette0Accent.shade700;

  @override
  Color bubbleBodyColor = Colors.red;

  @override
  Color bubbleBorderColor = Colors.red;

  //10 play button color
  @override
  Color playButtonColor = MyGreen.mcgpalette0.shade700;
}

class MyBlue {
  static const MaterialColor mcgpalette0 =
      MaterialColor(0xFF2E5272, <int, Color>{
    50: Color(0xFFE6EAEE),
    100: Color(0xFFC0CBD5),
    200: Color(0xFF97A9B9),
    300: Color(0xFF6D869C),
    400: Color(0xFF4D6C87),
    500: Color(0xFF2E5272),
    600: Color(0xFF294B6A),
    700: Color(0xFF23415F),
    800: Color(0xFF1D3855),
    900: Color(0xFF122842),
  });

  static const MaterialColor mcgpalette0Accent =
      MaterialColor(0xFF4B98FF, <int, Color>{
    100: Color(0xFF7EB5FF),
    200: Color(0xFF4B98FF),
    400: Color(0xFF187BFF),
    700: Color(0xFF006DFD),
  });
}

class MyGreen {
  static const MaterialColor mcgpalette0 =
      MaterialColor(0xFF7EA43A, <int, Color>{
    50: Color(0xFFF0F4E7),
    100: Color(0xFFD8E4C4),
    200: Color(0xFFBFD29D),
    300: Color(0xFFA5BF75),
    400: Color(0xFF91B258),
    500: Color(0xFF7EA43A),
    600: Color(0xFF769C34),
    700: Color(0xFF6B922C),
    800: Color(0xFF618925),
    900: Color(0xFF4E7818),
  });

  static const MaterialColor mcgpalette0Accent =
      MaterialColor(0xFFC3FF7E, <int, Color>{
    100: Color(0xFFDAFFB1),
    200: Color(0xFFC3FF7E),
    400: Color(0xFFABFF4B),
    700: Color(0xFF9FFF31),
  });
}

class MyBrown {
  static const MaterialColor mcgpalette0 =
      MaterialColor(0xFFB1823F, <int, Color>{
    50: Color(0xFFF6F0E8),
    100: Color(0xFFE8DAC5),
    200: Color(0xFFD8C19F),
    300: Color(0xFFC8A879),
    400: Color(0xFFBD955C),
    500: Color(0xFFB1823F),
    600: Color(0xFFAA7A39),
    700: Color(0xFFA16F31),
    800: Color(0xFF986529),
    900: Color(0xFF88521B),
  });

  static const MaterialColor mcgpalette0Accent =
      MaterialColor(0xFFFFC48E, <int, Color>{
    100: Color(0xFFFFDFC1),
    200: Color(0xFFFFC48E),
    400: Color(0xFFFFA95B),
    700: Color(0xFFFF9C41),
  });
}

class MyPink {
  static const MaterialColor mcgpalette0 =
      MaterialColor(0xFF903364, <int, Color>{
    50: Color(0xFFF2E7EC),
    100: Color(0xFFDEC2D1),
    200: Color(0xFFC899B2),
    300: Color(0xFFB17093),
    400: Color(0xFFA1527B),
    500: Color(0xFF903364),
    600: Color(0xFF882E5C),
    700: Color(0xFF7D2752),
    800: Color(0xFF732048),
    900: Color(0xFF611436),
  });

  static const MaterialColor mcgpalette0Accent =
      MaterialColor(0xFFFF67A5, <int, Color>{
    100: Color(0xFFFF9AC3),
    200: Color(0xFFFF67A5),
    400: Color(0xFFFF3487),
    700: Color(0xFFFF1A78),
  });
}
