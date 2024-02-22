// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/components/buttons/gardient_button.dart';
import 'package:task/components/buttons/main_button.dart';
import 'package:task/routes/app_routes.dart';
import 'package:task/utils/colors.dart';
import 'package:task/views/onboardings/fragments/fragment_1.dart';
import 'package:task/views/onboardings/fragments/fragment_2.dart';
import 'package:task/views/onboardings/fragments/fragment_3.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int slideIndex = 0;
  PageController? controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: PageView(
                    controller: controller,
                    onPageChanged: (index) {
                      setState(() {
                        slideIndex = index;
                      });
                    },
                    children: <Widget>[
                      FragmentOne(controller: controller!),
                      FragmentTwo(controller: controller!),
                      FragmentThree(controller: controller!),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20, top: 10),
                  padding: const EdgeInsets.only(top: 0.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 3; i++)
                        i == slideIndex
                            ? _buildPageIndicator(true)
                            : _buildPageIndicator(false),
                    ],
                  ),
                ),
                for (int i = 0; i < 2; i++)
                  slideIndex == i
                      ? Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MainButton(
                                title: 'Skip',
                                buttonwidth: 0.4,
                                onPressed: () {
                                  Get.toNamed(AppRoutes.main);
                                },
                              ),
                              GradientButton(
                                title: 'Next',
                                buttonwidth: 0.4,
                                textColor: white,
                                onPressed: () {
                                  setState(() {
                                    slideIndex++;
                                    controller!.animateToPage(slideIndex,
                                        duration: Duration(milliseconds: 400),
                                        curve: Curves.ease);
                                  });
                                },
                              ),
                            ],
                          ),
                        )
                      : Container(),
                slideIndex == 2
                    ? Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MainButton(
                              title: 'Skip',
                              buttonwidth: 0.4,
                              onPressed: () {
                                Get.toNamed(AppRoutes.main);
                              },
                            ),
                            GradientButton(
                              title: 'Explore',
                              buttonwidth: 0.4,
                              textColor: white,
                              onPressed: () {
                                Get.toNamed(AppRoutes.main);
                              },
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//! Page Indicator
Widget _buildPageIndicator(bool isCurrentPage) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4.0),
    height: 6,
    width: 6,
    decoration: BoxDecoration(
      color: isCurrentPage ? lightBlue : grey,
      border: Border.all(color: isCurrentPage ? lightBlue : grey),
      borderRadius: BorderRadius.circular(30),
    ),
  );
}
