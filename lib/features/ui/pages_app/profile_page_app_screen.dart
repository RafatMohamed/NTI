import 'package:flutter/material.dart';
import 'package:nti_proj/features/ui/pages_app/task_home_screen.dart';
import '../../../core/resources/images/my_images.dart';
import '../../../core/widget_app_toDo/text_button_widget_app.dart';
import '../../../core/widget_app_toDo/text_form_field_app.dart';
import '../../models/user_app.dart';
import 'main_home_app_screen.dart';

class ProfilePageApp extends StatelessWidget {
  const ProfilePageApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    User user1 = User(
      name: nameController.text,
      imgProfile: MyImages.imageFlagpalestine,
    );

    return Scaffold(
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(20),
                bottomEnd: Radius.circular(20),
              ),
              child: Image.asset(
                height: 445,
                width: double.infinity,
                MyImages.imageFlagpalestine,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 23),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormFieldApp(
                      controller: nameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Your Name';
                        } else {
                          Text(value);
                        }
                        return null;
                      },
                      onFieldSubmitted: (userInp) {
                        if (userInp.isEmpty) {
                          return null;
                        } else {
                          user1.name = userInp; // Assign the string to the user's name property
                          return Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomeMainPage(
                                  user: user1, // Pass the entire user object, not just the name
                                );
                              },
                            ),
                          );
                        }
                      },
                      hintText: "type your name here",
                      labelText: "Your Name",
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(
                      height: 63,
                    ),
                    TextButtonWidgetGo(
                        text: "Save",
                        onTap: () {
                          if (nameController.text.isNotEmpty) {
                            return Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return HomeTask(
                                    user:
                                    user1, // Pass the entire user object, not just the name
                                  );
                                },
                              ),
                            );
                          } else {
                            return null;
                          }
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}