import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/Icons/my_icons.dart';

class IconPop extends StatelessWidget {
  const IconPop({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: SvgPicture.asset(
        MyIcons.iconBack,
        fit: BoxFit.fill,
      ),
    );
  }
}
