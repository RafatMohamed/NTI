import 'package:flutter/material.dart';

class IConSvgWidget extends StatelessWidget {
  const IConSvgWidget({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.colorContanier,
    this.radius = 5,
  });
  final Widget icon;
  final double? width;
  final double? height;
  final double? radius;

  final Color? colorContanier;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorContanier,
        borderRadius: BorderRadius.circular(radius!),
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: icon,
      ),
    );
  }
}
