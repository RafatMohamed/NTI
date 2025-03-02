import 'package:flutter/material.dart';

import '../../../core/resources/Colors/my_colors.dart';
import '../../../core/widget_app_toDo/default_container_hor.dart';
import '../../../core/widget_app_toDo/default_container_vert.dart';
import '../../../core/widget_app_toDo/icon_add_task.dart';
import '../../../core/widget_app_toDo/info_user_widget.dart';
import '../../../core/widget_app_toDo/text_widget_app.dart';
import '../../../widget/text_widget.dart';
import '../../models/icon_models.dart';
import '../../models/user_app.dart';

class HomeMainPage extends StatelessWidget {
  const HomeMainPage({super.key, required this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InfoUserWidget(user: user,),
                IconAddTask(),
              ],
            ),
            SizedBox(
              height: 34,
            ),
            Container(
              padding: EdgeInsetsDirectional.all(20,),
              margin: EdgeInsetsDirectional.symmetric(horizontal: 20),
              height: 135,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: MyColors.greenColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 140,
                    child: TextWidgetApp(
                      textAlign: TextAlign.start,
                      text: "Your today’s tasks almost done!",
                      fontSize: 14,
                      color: MyColors.whiteColor,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          TextWidgetApp(
                            color: MyColors.whiteColor,
                            text: "80",
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                          ),
                          TextWidgetApp(
                            color: MyColors.whiteColor,
                            text: "%",
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      Container(
                        height: 36,
                        decoration: BoxDecoration(
                          color: MyColors.whiteColor,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            overlayColor: Colors.cyan,
                          ),
                          onPressed: () {},
                          child: TextWidgetApp(
                            color: MyColors.greenColor,
                            text: "View Tasks",
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                spacing: 100,
                children: [
                  TextWidgetApp(
                    text: "In Progress",
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: MyColors.containerPersonColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: TextWidget(
                        text: "5",
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 26,
            ),
            SingleChildScrollView(
              padding: EdgeInsetsDirectional.only(start: 20),
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  spacing: 16,
                  children: [
                    DefaultContainerHor(
                      iconModels: IconModels.iconWork,
                      text: "Work Task",
                      desc: "Add New Features",
                    ),
                    DefaultContainerHor(
                      iconModels: IconModels.iconPerson,
                      text: "Personal Task",
                      desc: "Improve my English skills by trying to speek",
                    ),
                    DefaultContainerHor(
                      iconModels: IconModels.iconHome,
                      text: "Home Task",
                      desc: "Add new feature for Do It app and commit it",
                    ),
                  ],
                )),
            SizedBox(
              height: 26,
            ),
            TextWidgetApp(
              paddingHorizontal: 20,
              textAlign: TextAlign.start,
              text: "Task Groups",
              fontSize: 14,
              color: MyColors.textBlackColor,
            ),
            SizedBox(
              height: 26,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                child: Column(
                  spacing: 16,
                  children: [
                    DefaultContainerVert(
                      iconModels: IconModels.iconHome,
                      text: "Home",
                      value: "5",
                    ),
                    DefaultContainerVert(
                      iconModels: IconModels.iconWork,
                      text: "Work",
                      value: "3",
                    ),
                    DefaultContainerVert(
                      iconModels: IconModels.iconPerson,
                      text: "Person",
                      value: "1",
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
