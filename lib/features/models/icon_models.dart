import 'dart:ui';

import '../../core/resources/Colors/my_colors.dart';
import '../../core/resources/Icons/my_icons.dart';

 class IconModels {
  String icon;
  Color iconColor;
  Color iconColorDecoration;

  IconModels({
    required this.icon,
    required this.iconColor,
    required this.iconColorDecoration,
  });

   static IconModels iconHome = IconModels(
  icon: MyIcons.iconHomeSvg,
  iconColor: MyColors.homeIconColor,
  iconColorDecoration: MyColors.containerHomeColor,
);
  static IconModels iconPerson = IconModels(
  icon: MyIcons.iconPersonSvg,
  iconColor: MyColors.greenColor ,
  iconColorDecoration: MyColors.containerPersonColor,
);
  static IconModels iconWork = IconModels(
  icon: MyIcons.iconWorkSvg,
  iconColor: MyColors.whiteColor,
  iconColorDecoration: MyColors.containerWorkColor,
);

}

// IconModels iconHome = IconModels(
//   icon: MyIcons.iconHomeSvg,
//   iconColor: MyColors.homeIconColor,
//   iconColorDecoration: MyColors.containerHomeColor,
// );
// IconModels iconPerson = IconModels(
//   icon: MyIcons.iconPersonSvg,
//   iconColor: MyColors.containerPersonColor,
//   iconColorDecoration: MyColors.greenColor,
// );
// IconModels iconWork = IconModels(
//   icon: MyIcons.iconWorkSvg,
//   iconColor: MyColors.whiteColor,
//   iconColorDecoration: MyColors.containerWorkColor,
// );
