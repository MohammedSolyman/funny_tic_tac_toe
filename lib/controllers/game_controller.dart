import 'package:funny_tic_tac_toe/models/game_model.dart';
import 'package:get/get.dart';

class GameController extends GetxController {
  Rx<GameModel> model = GameModel().obs;
}
