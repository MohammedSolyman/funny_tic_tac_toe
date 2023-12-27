import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:funny_tic_tac_toe/models/audio_model.dart';
import 'package:funny_tic_tac_toe/utilities/audio_paths.dart';
import 'package:get/get.dart';

class AudioController extends GetxController {
  Rx<AudioModel> model = AudioModel().obs;

  Future<void> playAudio1(Audio a) async {
    if (model.value.isAudioOn) {
      try {
        await model.value.player1.open(a, autoStart: false);
        await model.value.player1.play();
      } catch (e) {
        print('--- error: $e');
      }
    }
  }

  Future<void> playAudio2(Audio a) async {
    if (model.value.isAudioOn) {
      try {
        await model.value.player2.open(a, autoStart: false);
        await model.value.player2.play();
      } catch (e) {
        print('--- error: $e');
      }
    }
  }

  Future<void> playAudioPageTransition() async {
    Audio pageTransition = Audio(AudioPaths.pageTransition);
    await playAudio1(pageTransition);
  }

  Future<void> playAudioX() async {
    Audio play1 = Audio(AudioPaths.play1);
    await playAudio1(play1);
  }

  Future<void> playAudioO() async {
    Audio play2 = Audio(AudioPaths.play2);
    await playAudio1(play2);
  }

  Future<void> playAudioSplash() async {
    Audio splash = Audio(AudioPaths.splash);
    await playAudio1(splash);
  }

  Future<void> playAudioTie() async {
    Audio tie = Audio(AudioPaths.tie);
    await playAudio2(tie);
  }

  Future<void> playAudioWinning() async {
    Audio winning = Audio(AudioPaths.winning);
    await playAudio2(winning);
  }

  void toggleAudioMode() {
    model.update((val) {
      val!.isAudioOn = !val.isAudioOn;
    });
    model.value.box.write('isAudioOn', model.value.isAudioOn);
  }

  void _getAudioFromStorage() {
    model.update((val) {
      val!.isAudioOn = val.box.read('isAudioOn') ?? true;
    });
  }

  @override
  void onInit() {
    _getAudioFromStorage();

    super.onInit();
  }
}
