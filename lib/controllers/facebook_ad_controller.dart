import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:funny_tic_tac_toe/models/facebook_ads_model.dart';
import 'package:get/get.dart';

class FacebookAdController extends GetxController {
  Rx<FacebookAdModel> model = FacebookAdModel().obs;

  void loadRewardedVideoAd() {
    FacebookRewardedVideoAd.loadRewardedVideoAd(
      listener: (result, value) {
        print("--- $result --> $value");
        if (result == RewardedVideoAdResult.LOADED) {
          model.update((val) {
            val!.isRewarderLoaded = true;
          });
        }

        /// Once a Rewarded Ad has been closed and becomes invalidated,
        /// load a fresh Ad by calling this function.
        if (result == RewardedVideoAdResult.VIDEO_CLOSED) {
          model.update((val) {
            val!.isRewarderLoaded = false;
          });
          loadRewardedVideoAd();
        }
      },
    );
  }

  void showRewardedAd() {
    if (model.value.isRewarderLoaded == true) {
      FacebookRewardedVideoAd.showRewardedVideoAd();
    } else {
      print("---Rewarded Ad not yet loaded!");
    }
  }

  FacebookBannerAd getBannerAd() {
    return FacebookBannerAd(
      // placementId: model.value.placementId,
      bannerSize: BannerSize.STANDARD,
      listener: (result, value) {
        switch (result) {
          case BannerAdResult.ERROR:
            print("Error: $value");
            break;
          case BannerAdResult.LOADED:
            print("Loaded: $value");
            break;
          case BannerAdResult.CLICKED:
            print("Clicked: $value");
            break;
          case BannerAdResult.LOGGING_IMPRESSION:
            print("Logging Impression: $value");
            break;
        }
      },
    );
  }

  @override
  void onInit() {
    FacebookAudienceNetwork.init(testingId: model.value.testId);

    loadRewardedVideoAd();
    super.onInit();
  }
}
