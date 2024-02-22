// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task/routes/app_pages.dart';
import 'package:task/views/home/home_view.dart';
import 'package:task/views/main/main.dart';
import 'package:task/views/main/main_binding.dart';
import 'package:task/views/splash/splash_binding.dart';
import 'package:task/views/splash/splash_view.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      title: "Test",
      initialBinding: SplashBinding(),
      home: SplashView(),
      getPages: AppPages.pages,
    );
  }
}
