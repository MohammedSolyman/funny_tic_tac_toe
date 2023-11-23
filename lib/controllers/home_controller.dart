import 'package:funny_tic_tac_toe/models/home_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<HomeModel> model = HomeModel().obs;
}
