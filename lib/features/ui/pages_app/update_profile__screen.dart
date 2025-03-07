import 'package:flutter/material.dart';
import 'package:nti_proj/features/ui/pages_app/profile_page_app_screen.dart';
import 'package:nti_proj/features/ui/pages_app/setting_screen.dart';

import '../../../core/resources/Icons/my_icons.dart';
import '../../../core/widget_app_toDo/default_container_profile_update.dart';
import '../../../core/widget_app_toDo/info_user_widget.dart';
import '../../../core/widget_app_toDo/text_button_widget_app.dart';
import '../../models/user_app.dart';
import 'main_home_app_screen.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.all(20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoUserWidget(
                    user: user,
                  ),
                ],
              ),
              SizedBox(
                height: 37,
              ),
              DefaultContainerProfileUpdate(
                text: "Update Profile",
                icon: MyIcons.iconPersonProfile,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ProfilePageApp();
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: 18,
              ),
              DefaultContainerProfileUpdate(
                text: "Settings",
                icon: MyIcons.iconSettingProfile,
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SettingPage();
                    },
                  ));
                },
              ),
              Spacer(
                flex: 1,
              ),
              TextButtonWidgetGo(
                  text: "Save",
                  onTap: () {
                    return Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeMainPage(
                            user: user,
                          );
                        },
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
