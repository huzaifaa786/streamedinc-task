// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:task/utils/colors.dart';

class GradientButton extends StatelessWidget {
  const GradientButton(
      {Key? key,
      @required this.title,
      @required this.onPressed,
      this.color = white,
      this.textColor = Colors.black,

      this.buttonwidth = 0.99,
      this.radius = 45.0,
      this.buttonHeight = 50.0})
      : super(key: key);

  final title;
  final color;
  final radius;
  final textColor;
  final onPressed;
  final buttonwidth;
  final buttonHeight;

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
              colors: [gradientBlue, lightBlue],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(radius)),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontFamily: "Montserrat",
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
