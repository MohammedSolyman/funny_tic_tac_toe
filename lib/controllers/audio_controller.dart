import 'package:funny_tic_tac_toe/models/audio_model.dart';
import 'package:get/get.dart';

class AudioController extends GetxController {
  Rx<AudioModel> model = AudioModel().obs;
}
