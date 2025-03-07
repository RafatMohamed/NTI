import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_proj/core/widget_app_toDo/text_widget_app.dart';

import '../../features/models/icon_models.dart';
import '../resources/Colors/my_colors.dart';

class DefaultContainerVert extends StatelessWidget {
  final String text;
  final String value;

  final IconModels iconModels;

  const DefaultContainerVert(
      {super.key,
      required this.text,
      required this.value,
      required this.iconModels});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
          color: MyColors.whiteColor, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 10,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Container(
                    width: 35,
                    height: 35,
                    color: iconModels.iconColorDecoration,
                    child: SvgPicture.asset(
                      iconModels.icon,
                      colorFilter: ColorFilter.mode(
                          iconModels.iconColor, BlendMode.srcIn),
                      fit: BoxFit.none,
                    ),
                  )),
              TextWidgetApp(
                text: text,
                fontSize: 14,
                color: MyColors.textBlackColor,
              ),
            ],
          ),
          Container(
            width: 20,
            height: 21,
            decoration: BoxDecoration(
              color: iconModels.iconColorDecoration,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: TextWidgetApp(
                text: value,
                fontSize: 14,
                color: iconModels.iconColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
