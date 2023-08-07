import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, this.isBold = false, this.fontSize = 14});

  final String text;
  final bool isBold;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          fontSize: fontSize),
    );
  }
}
