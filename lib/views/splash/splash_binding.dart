import 'package:get/get.dart';
import 'package:task/views/splash/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    // Get.lazyPut(() => BusyController());
    // Get.lazyPut(() => AuthApi());
    // Get.lazyPut(() => DatabaseApi());
    // Get.lazyPut(() => UserService());
  }
}
