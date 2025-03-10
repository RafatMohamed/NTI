import 'package:flutter/material.dart';

import '../resources/Colors/my_colors.dart';

class TextWidgetApp extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final double paddingHorizontal;
  final Color color;
  final String? fontFamily;
  final FontStyle? fontStyle;
  final TextAlign? textAlign;

  const TextWidgetApp({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 18,
    this.color = MyColors.textBlackColor,
    this.fontFamily = "LexendDeca",
    this.fontStyle,
    this.textAlign = TextAlign.center,
    this.paddingHorizontal = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
      child: Text(
        textAlign: textAlign,
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
          fontStyle: fontStyle,
        ),
      ),
    );
  }
}
