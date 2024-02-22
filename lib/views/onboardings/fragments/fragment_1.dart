// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:task/utils/colors.dart';

class FragmentOne extends StatefulWidget {
  const FragmentOne({super.key, required this.controller});
  final PageController controller;

  @override
  State<FragmentOne> createState() => _FragmentOneState();
}

class _FragmentOneState extends State<FragmentOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //? Image
              Container(
                color: navBlue,
                height: MediaQuery.of(context).size.height * 0.55,
                child: Image(
                  image: AssetImage(
                    'assets/images/onboard1.png',
                  ),
                  fit: BoxFit.scaleDown,
                  height: MediaQuery.of(context).size.height * 0.45,
                ),
              ),
              //? Heading Text
              Padding(
                  padding:
                      EdgeInsets.only(top: 20, right: 8, left: 8, bottom: 10),
                  child: Text(
                    "Discover Great Deals",
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: white,
                    ),
                    textAlign: TextAlign.center,
                  )),
              //? Sub_Heading Text
              Padding(
                  padding: EdgeInsets.only(top: 10, right: 8, left: 8),
                  child: Text(
                    "Have something to sell? Just snap, upload, and price your items. We've made the process simple and quick. Get your items in front of buyers in no time!",
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: white,
                    ),
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
        ),
      )),
    );
  }
}
