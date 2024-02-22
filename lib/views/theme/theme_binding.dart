import 'package:get/get.dart';
import 'package:task/views/theme/theme_controller.dart';

class ThemeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThemeController());
  }
}
