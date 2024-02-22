import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:task/utils/colors.dart';

class TopCard extends StatelessWidget {
  const TopCard({super.key, this.text, this.icons});
  final String? text;
  final Widget? icons;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top:8,left: 10, right: 10),
          width: 53,
          height: 53,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: GradientBoxBorder(
              gradient: LinearGradient(colors: [navBlue.withOpacity(0.6), lightBlue]),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(child: icons),
        ),
        Text(
          text!,
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
