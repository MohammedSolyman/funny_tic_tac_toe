import 'package:funny_tic_tac_toe/controllers/transition_controller.dart';
import 'package:funny_tic_tac_toe/models/game_model.dart';
import 'package:get/get.dart';

class GameController extends GetxController with GetTickerProviderStateMixin {
  Rx<GameModel> model = GameModel().obs;
  TransitionController tCont = Get.find<TransitionController>();

  @override
  void onInit() {
    super.onInit();
    tCont.unCoverScreen();
  }
}
