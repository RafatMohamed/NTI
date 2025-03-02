import 'package:flutter/material.dart';
import 'package:nti_proj/widget/text_widget.dart';

class TaskBar extends StatelessWidget {
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final String text;
  final double? width;
  final double? height;

  const TaskBar({
    super.key,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.black,
    this.textColor = Colors.black,
    required this.text,
    this.width = 80,
    this.height = 28,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor!, width: 0.5),
        color: backgroundColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
          child: TextWidget(
        text: text,
        fontSize: 15,
        color: textColor!,
      )),
    );
  }
}
