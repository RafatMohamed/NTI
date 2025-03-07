import 'package:flutter/material.dart';

import '../core/widget_app_toDo/text_widget_app.dart';
import '../features/models/user_input_inf.dart';
import 'login_screen.dart';

class TestCubitApl extends StatelessWidget {
  const TestCubitApl({super.key, required this.user});

  final UserInputInfo user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        margin: EdgeInsetsDirectional.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Row(
              children: [
                TextWidgetApp(
                  text: "user.name : ",
                ),
                TextWidgetApp(
                  text: user.name,
                ),
              ],
            ),
            Row(
              children: [
                TextWidgetApp(
                  text: "user.age : ",
                ),
                TextWidgetApp(text: user.age),
              ],
            ),
            Row(
              children: [
                TextWidgetApp(
                  text: "user.phone : ",
                ),
                TextWidgetApp(text: user.phone),
              ],
            ),
            Row(
              children: [
                TextWidgetApp(
                  text: "user.Email : ",
                ),
                TextWidgetApp(text: user.email),
              ],
            ),
            Row(
              children: [
                TextWidgetApp(
                  text: "user.password : ",
                ),
                TextWidgetApp(text: user.password),
              ],
            ),
            SizedBox(height: 60,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen(user1: user,);
                },));
              },
              child: Text("go to login"),),
          ],
        ),

      ),
    );
  }
}
