import 'package:flutter/material.dart';

import '../widget/category_task.dart';
import '../widget/icon_widget.dart';
import '../widget/task_bar.dart';
import '../widget/text_widget.dart';

class Home3 extends StatelessWidget {
  const Home3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffF3F5F4),
      appBar: AppBar(
        leading: IconWidget(icon: Icon(Icons.arrow_back_ios_sharp)),
        title: TextWidget(
          text: "Today Tasks",
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        actions: [
          Container(
            width: 70,
            height: 28,
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: Color(0xffCEEBDC),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 1,
                children: [
                  IconWidget(
                    icon: Icon(Icons.add),
                    size: 26,
                  ),
                  TextWidget(
                    text: "Add",
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          spacing: 25,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TaskBar(
                  text: "All",
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  borderColor: Colors.green,
                ),
                TaskBar(
                  text: "Future",
                ),
                TaskBar(
                  text: "Missed",
                ),
                TaskBar(
                  text: "Done",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 60,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextWidget(
                  text: "Results",
                  fontSize: 22,
                ),
                Container(
                  width: 20,
                  height: 21,
                  decoration: BoxDecoration(
                    color: Color(0xffCEEBDC),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 1,
                      children: [
                        TextWidget(
                          text: "5",
                          fontSize: 16,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                spacing: 15,
                children: [
                  CategoryTask(
                    icon: Icons.work_outline_sharp,
                    textDo: "Work Task",
                    statuesText: "Future",
                    backgroundColorStatuesText: Color(0xffF3F5F4),
                    detailsTextDo:
                        "Go to SuperMarket to buy some milk &\n eggs",
                    backgroundColorIcon: Colors.black,
                    colorStatuesText: Colors.black,
                  ),
                  CategoryTask(
                    icon: Icons.work_outline_sharp,
                    textDo: "Work Task",
                    statuesText: "Done",
                    backgroundColorStatuesText: Colors.green,
                    detailsTextDo:
                        "Go to SuperMarket to buy some milk &\n eggs",
                    backgroundColorIcon: Colors.black,
                  ),
                  CategoryTask(
                    icon: Icons.home_outlined,
                    textDo: "Home Task",
                    statuesText: "Future",
                    backgroundColorStatuesText: Color(0xffF3F5F4),
                    backgroundColorIcon: Color(0xffFF0084),
                    colorStatuesText: Colors.black,
                    detailsTextDo:
                        "Add new feature for Do It app and \n commit it",
                  ),
                  CategoryTask(
                    icon: Icons.person,
                    textDo: "Person Task",
                    statuesText: "In Progress \n ",
                    backgroundColorStatuesText: Color(0xffCEEBDC),
                    colorStatuesText: Colors.black,
                    detailsTextDo:
                        "Improve my English skills by trying to \n speak",
                    backgroundColorIcon: Colors.green,
                  ),
                  CategoryTask(
                    icon: Icons.home_outlined,
                    textDo: "Home Task",
                    statuesText: "Done",
                    backgroundColorStatuesText: Colors.green,
                    detailsTextDo:
                        "Add new feature for Do It app and \n commit it",
                    backgroundColorIcon: Color(0xffFF0084),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
