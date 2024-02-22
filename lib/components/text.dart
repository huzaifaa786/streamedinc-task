import 'package:flutter/material.dart';

class TtText extends StatelessWidget {
  final String? text;
  final double? size;
  const TtText({Key? key, this.text, this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text!, style: TextStyle(color: Colors.white, fontSize: size));
  }
}
