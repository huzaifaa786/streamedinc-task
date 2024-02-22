import 'package:get/get.dart';
import 'package:task/routes/app_routes.dart';
import 'package:task/views/home/home_binding.dart';
import 'package:task/views/home/home_view.dart';
import 'package:task/views/main/main.dart';
import 'package:task/views/main/main_binding.dart';
import 'package:task/views/onboardings/onboarding_view.dart';
import 'package:task/views/splash/splash_binding.dart';
import 'package:task/views/splash/splash_view.dart';
import 'package:task/views/theme/theme_binding.dart';
import 'package:task/views/theme/theme_view.dart';

class AppPages {
  static final List<GetPage> pages = [
    //? Splash Route
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),

    //? OnBoarding Route
    GetPage(
      name: AppRoutes.onBoarding,
      page: () => const OnBoardingView(),
      // binding: SplashBinding(),
    ),

    //? Main Route
    GetPage(
      name: AppRoutes.main,
      page: () => const MainView(),
      binding: MainBinding(),
    ),

    //? HomeView Route
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),

    //? Theme Route
    GetPage(
      name: AppRoutes.theme,
      page: () => const ThemeView(),
      binding: ThemeBinding(),
    ),
  ];
}
