import 'package:funny_tic_tac_toe/models/theming_model/my_light_theme.dart';
import 'package:funny_tic_tac_toe/models/theming_model/my_theming.dart';
import 'package:get_storage/get_storage.dart';

class ThemingModel {
  bool isLightTheme = true;

  MyTheme myTheme = MyLightTheme();

  final box = GetStorage();
}
