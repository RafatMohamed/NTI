import 'package:flutter/material.dart';
import 'package:nti_proj/core/widget_app_toDo/text_widget_app.dart';

import '../../features/models/user_app.dart';
import '../../features/ui/pages_app/update_profile__screen.dart';
import '../resources/images/my_images.dart';

class InfoUserWidget extends StatelessWidget {
  const InfoUserWidget({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return UpdateProfilePage(
              user: user,
            );
          },
        ));
      },
      child: Container(
        margin: EdgeInsetsDirectional.all(20),
        width: 200,
        decoration: BoxDecoration(color: Colors.transparent),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: user.imgProfile == null
                    ? Image.asset(
                        MyImages.imageFlagpalestine,
                        height: 60,
                        width: 60,
                        fit: BoxFit.fill,
                      )
                    : Image.file(
                        user.imgProfile!,
                        height: 60,
                        width: 60,
                        fit: BoxFit.fill,
                      )),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidgetApp(
                  text: "Hello!",
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                SizedBox(
                  height: 10,
                ),
                TextWidgetApp(
                  text: user.name,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
