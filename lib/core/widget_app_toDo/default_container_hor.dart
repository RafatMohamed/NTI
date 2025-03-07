import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_proj/core/widget_app_toDo/text_widget_app.dart';

import '../../features/models/icon_models.dart';

class DefaultContainerHor extends StatelessWidget {
  const DefaultContainerHor(
      {super.key,
      required this.text,
      required this.desc,
      required this.iconModels});

  final String text;
  final String desc;
  final IconModels iconModels;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 135,
      padding: EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 13),
      decoration: BoxDecoration(
        color: iconModels.iconColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidgetApp(
                text: text,
                fontSize: 12,
                color: iconModels.iconColorDecoration,
              ),
              IconButton(
                onPressed: () {},
                icon: Container(
                  decoration: BoxDecoration(
                    color: iconModels.iconColorDecoration,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: 35,
                  height: 35,
                  child: SvgPicture.asset(
                    iconModels.icon,
                    fit: BoxFit.none,
                  ),
                ),
              ),
            ],
          ),
          TextWidgetApp(
            textAlign: TextAlign.start,
            text: desc,
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: iconModels.iconColorDecoration,
          ),
        ],
      ),
    );
  }
}
