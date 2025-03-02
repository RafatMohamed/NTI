import 'package:flutter/material.dart';

import '../widget/icon_widget.dart';
import '../widget/text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconWidget(icon: Icon(Icons.menu)),
        title: TextWidget(
          text: "Task 1",
          color: Colors.cyan,
          fontSize: 30,
        ),
        centerTitle: true,
        actions: [
          IconWidget(
            icon: Icon(Icons.search),
          ),
          SizedBox(
            width: 10,
          ),
          IconWidget(
            icon: Icon(Icons.settings),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            TextWidget(
              text: "Hello World!!",
              fontWeight: FontWeight.bold,
              fontSize: 60,
            ),
            SizedBox(
              width: 10,
            ),
            IconWidget(
              icon: Icon(Icons.celebration),
            ),
          ],
        ),
      ),
    );
  }
}
