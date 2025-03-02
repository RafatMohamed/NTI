import 'package:flutter/material.dart';

import '../../../core/resources/images/my_images.dart';
import '../../../core/widget_app_toDo/icon_add_task.dart';
import '../../../core/widget_app_toDo/info_user_widget.dart';
import '../../../core/widget_app_toDo/text_widget_app.dart';
import '../../models/user_app.dart';


class HomeTask extends StatelessWidget {
  const HomeTask({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InfoUserWidget(user: user,),
                IconAddTask(),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextWidgetApp(
                    text:
                        "There are no tasks yet \n Press the button To add New Task",
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Image.asset(MyImages.imageFoundTask),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
