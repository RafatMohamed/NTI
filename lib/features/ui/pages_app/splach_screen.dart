import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_proj/features/ui/pages_app/profile_page_app_screen.dart';

import '../../../core/resources/images/my_images.dart';
import '../../../core/widget_app_toDo/text_button_widget_app.dart';
import '../../../core/widget_app_toDo/text_widget_app.dart';

class LetsStart extends StatelessWidget {
  const LetsStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:
              const EdgeInsetsDirectional.only(top: 90, start: 36, end: 36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                MyImages.imageSplachSvg,
                fit: BoxFit.fill,
                width: 300,
                height: 345,
              ),
              // Image.asset(
              //   MyImages.imageSplach,
              //   width: 300,
              //   height: 345,
              // ),
              SizedBox(
                height: 60,
              ),
              TextWidgetApp(
                text: "Welcome To   Do It !",
                fontSize: 24,
              ),
              SizedBox(
                height: 40,
              ),
              TextWidgetApp(
                text: "Ready to conquer your tasks? Let's Do   It together.",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 49,
              ),
              TextButtonWidgetGo(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    "/profile_page_app_screen.dart",
                    arguments: ProfilePageApp(),
                  );
                },
                text: "Let’s Start",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
