import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'theme_controller.dart';

class ThemeView extends StatelessWidget {
  const ThemeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      autoRemove: false,
      builder: (controller) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Theme'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Switch Theme:', style: TextStyle(fontSize: 20)),
              Obx(() {
                return Switch(
                  value: controller.isDarkMode.value,
                  onChanged: (value) {
                    controller.toggleTheme();
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
