import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:funny_tic_tac_toe/utilities/audio_paths.dart';
import 'package:get_storage/get_storage.dart';

class AudioModel {
  final box = GetStorage();

  bool isAudioOn = true;

  AssetsAudioPlayer player1 = AssetsAudioPlayer();
  AssetsAudioPlayer player2 = AssetsAudioPlayer();

  Audio pageTransition = Audio(AudioPaths.pageTransition);
  Audio play1 = Audio(AudioPaths.play1);
  Audio play2 = Audio(AudioPaths.play2);
  Audio splash = Audio(AudioPaths.splash);
  Audio tie = Audio(AudioPaths.tie);
  Audio winning = Audio(AudioPaths.winning);
}
