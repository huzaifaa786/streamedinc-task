import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  RxBool isDarkMode = false.obs;

  void toggleTheme() {
    isDarkMode.toggle();
    Get.changeThemeMode(
      isDarkMode.value ? ThemeMode.light : ThemeMode.dark,
    );
  }
}
