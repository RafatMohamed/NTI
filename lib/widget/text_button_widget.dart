import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget(
      {super.key,
      required this.text,
      this.fillColor = Colors.white,
      this.backgroundColor = Colors.green});
  final String text;
  final Color fillColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.green,
            blurRadius: 10,
            offset: Offset(0, 5),
          )
        ],
          border: Border.all(
            color: fillColor,
            style: BorderStyle.solid,
          ),
          color: backgroundColor,
          borderRadius: BorderRadius.vertical(
              top: Radius.elliptical(50, 14),
              bottom: Radius.elliptical(50, 14))),
      child: TextButton(
        style: TextButton.styleFrom(
          overlayColor: Colors.cyan,
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: fillColor,
            fontSize: 19,
            fontFamily: "LexendDeca",
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
