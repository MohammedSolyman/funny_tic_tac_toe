import 'package:funny_tic_tac_toe/models/theming_model.dart';
import 'package:get/get.dart';

class ThemingController extends GetxController {
  Rx<ThemingModel> model = ThemingModel().obs;

  void toggleThemingMode() {
    model.update((val) {
      val!.isLightTheme = !val.isLightTheme;

      if (val.isLightTheme) {
        val.myTheme = MyLightTheme();
      } else {
        val.myTheme = MyDarkTheme();
      }
    });
  }
}
