import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final Icon icon;
  final Color? color;
  final double? width;
  final double? height;

  final double? size;
  const IconWidget({
    super.key,
    required this.icon,
    this.color = Colors.black,
    this.size = 30,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Icon(
        icon.icon,
        color: color,
        size: size,
      ),
    );
  }
}
