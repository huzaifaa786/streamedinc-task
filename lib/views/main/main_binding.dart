import 'package:get/get.dart';
import 'package:task/views/home/home_controller.dart';
import 'package:task/views/theme/theme_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThemeController());
    Get.lazyPut(() => HomeController());
  }
}
