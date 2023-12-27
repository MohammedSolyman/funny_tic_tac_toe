import 'package:funny_tic_tac_toe/models/theming_model/my_dark_theme.dart';
import 'package:funny_tic_tac_toe/models/theming_model/my_light_theme.dart';
import 'package:funny_tic_tac_toe/models/theming_model/theming_model.dart';
import 'package:get/get.dart';

class ThemingController extends GetxController {
  //this controller is responsible of theming of the whole app.

  Rx<ThemingModel> model = ThemingModel().obs;

  void toggleThemingMode() {
    model.update((val) {
      val!.isLightTheme = !val.isLightTheme;

      model.value.box.write('isLightTheme', model.value.isLightTheme);

      _changeThemeData();
    });
  }

  void _changeThemeData() {
    model.update((val) {
      if (val!.isLightTheme) {
        val.myTheme = MyLightTheme();
      } else {
        val.myTheme = MyDarkTheme();
      }
    });
  }

  void _getThemeFromStorage() {
    model.update((val) {
      val!.isLightTheme = val.box.read('isLightTheme') ?? true;
    });
  }

  @override
  void onInit() {
    _getThemeFromStorage();
    _changeThemeData();

    super.onInit();
  }
}
