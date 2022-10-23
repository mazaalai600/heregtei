import 'package:flutter/material.dart';

class LabeledContainer extends StatelessWidget {
  final double? width;
  final double heigth;
  final Color color;
  final String text;
  final Color textColor;
  const LabeledContainer(
      {super.key,
      this.width,
      required this.color,
      this.heigth = double.infinity,
      required this.text,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heigth,
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 20),
        ),
      ),
    );
  }
}
