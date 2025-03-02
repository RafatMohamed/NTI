import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../core/resources/Colors/my_colors.dart';
import '../widget/icon_svg_widget.dart';
import '../widget/text_button_widget.dart';
import '../widget/text_form.dart';
import '../widget/text_widget.dart';

class TaskTextFormPage extends StatelessWidget {
  const TaskTextFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundScaffoldColor,
      appBar: AppBar(
        backgroundColor: MyColors.backgroundScaffoldColor,
        leading: IConSvgWidget(
          // width: 24,
          // height: 24,
          icon: IconButton(
            onPressed: (){},
            icon: SvgPicture.asset(
              "assets/ICons/iconamoon_arrow-up-2-thin.svg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: TextWidget(
          text: "Today Tasks",
          fontSize: 19,
          fontFamily: "LexendDeca",
          fontWeight: FontWeight.w300,
          color: MyColors.textBlackColor,
        ),
        centerTitle: true,
        actions: [
          Container(
            width: 80,
            height: 28,
            margin: EdgeInsets.only(
              right: 20,
            ),
            decoration: BoxDecoration(
              color: MyColors.redColor,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 4,
                children: [
                  IConSvgWidget(
                    icon: SvgPicture.asset(
                      width: 16,
                      height: 16,
                      "assets/ICons/IconDelet.svg",
                      fit: BoxFit.none,
                    ),
                  ),
                  TextWidget(
                    text: "Delete",
                    fontSize: 12,
                    fontFamily: "LexendDeca",
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          child: Column(
            spacing: 20,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 15,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 2,
                    children: [
                      TextWidget(
                        text: "In Progress",
                        fontSize: 14,
                        fontFamily: "LexendDeca",
                        fontWeight: FontWeight.w300,
                        color: MyColors.textBlackColor,
                      ),
                      TextWidget(
                        text: "Believe you can, and you're halfway there.",
                        fontSize: 14,
                        fontFamily: "LexendDeca",
                        fontWeight: FontWeight.w300,
                        color: MyColors.textBlackColor,
                      ),
                    ],
                  ),
                  TaskTextForm(
                    hintText: "Home",
                    iconSuffix: true,
                    labelText: "Task Group",
                  ),
                  TaskTextForm(
                    hintText: "Grocery Shopping App",
                      iconSuffix: false,
                      labelText: "Task Name",
                  ),
                  TaskTextForm(
                    hintText: "Go for grocery to buy some products. Go for grocery to buy some products. Go for grocery to buy some products. Go for grocery to buy some products.",
                    iconSuffix: false,
                    labelText: "Description",
                    maxLine: 5,
                  ),
                  TimeTextForm(
                    iconSuffix: true,
                    labelText: "Date",
                  ),
                  TimeTextFormSt(
                    iconSuffix: true,
                    labelText: "Time",
                  ),
                ],
              ),
              Column(
                spacing: 15,
                children: [
                  TextButtonWidget(text: "Mark as Done"),
                  TextButtonWidget(
                    text: "Update",
                    backgroundColor: Colors.white,
                    fillColor: MyColors.greenColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
