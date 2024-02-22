// ignore_for_file: prefer_const_constructors, prefer_const_literalsMainView_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:task/utils/colors.dart';

class GradientIconButton extends StatelessWidget {
  const GradientIconButton(
      {Key? key,
      @required this.onPressed,
      required this.icon,
      this.buttonwidth = 0.99,
      this.radius = 10.0,
      this.buttonHeight = 50.0})
      : super(key: key);

  final onPressed;
  final icon;
  final buttonwidth;
  final buttonHeight;
  final radius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * buttonwidth,
        height: buttonHeight,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [gradientBlue,lightBlue],
              begin: Alignment.bottomLeft,
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
