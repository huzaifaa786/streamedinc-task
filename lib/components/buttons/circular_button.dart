// ignore_for_file: prefer_const_constructors, prefer_const_literalsMainView_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:task/utils/colors.dart';

class CircularGradientIconButton extends StatelessWidget {
  const CircularGradientIconButton(
      {Key? key,
      @required this.onPressed,
      required this.icon,
      this.radius = 10.0,
      this.buttonHeight = 50.0})
      : super(key: key);

  final onPressed;
  final icon;
  // final buttonwidth;
  final buttonHeight;
  final radius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: 50,
        height: buttonHeight,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [gradientBlue,lightBlue],
              begin: Alignment.topCenter,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(radius)),
          ),
          child: Center(
            child: icon,
          ),
        ),
      ),
    );
  }
}
