import 'package:flutter/material.dart';
import 'package:nti_proj/core/widget_app_toDo/text_widget_app.dart';

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded)),
      title: TextWidgetApp(
        text: "",
        fontWeight: FontWeight.w300,
        fontSize: 19,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
