import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_proj/core/widget_app_toDo/text_widget_app.dart';

import '../../features/models/icon_models.dart';
import '../resources/Colors/my_colors.dart';

class DropDownFormField extends StatelessWidget {
  const DropDownFormField({
    super.key,
    required this.text,
    required this.iconModel,
  });

  final String text;
  final IconModels iconModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        IconButton(
            onPressed: () {},
            icon: Container(
              width: 35,
              height: 35,
              color: iconModel.iconColorDecoration,
              child: SvgPicture.asset(
                iconModel.icon,
                colorFilter:
                    ColorFilter.mode(iconModel.iconColor, BlendMode.srcIn),
                fit: BoxFit.none,
              ),
            )),
        TextWidgetApp(
          text: text,
          fontSize: 18,
          color: MyColors.labelTextColor,
        )
      ],
    );
  }
}
