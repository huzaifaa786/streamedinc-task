import 'package:get/get.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:task/routes/app_routes.dart';

class SplashController extends GetxController {
  static SplashController instance = Get.find();

  @override
  void onInit() {
    initscreen();
    super.onInit();
  }

  void initscreen() async {
    await Future.delayed(const Duration(seconds: 3), () {
      checkFirstSeen();
      update();
    });
  }

  Future checkFirstSeen() async {
    bool firstCall = await IsFirstRun.isFirstCall();
    if (firstCall) {
      Get.offNamed(AppRoutes.onBoarding);
    } else {
      Get.offNamed(AppRoutes.onBoarding);
    }
  }
}
