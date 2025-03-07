import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/resources/Colors/my_colors.dart';
import '../../../core/widget_app_toDo/icon_pop.dart';
import '../../../core/widget_app_toDo/selector_form_field_widget_app.dart';
import '../../../core/widget_app_toDo/text_button_widget_app.dart';
import '../../../core/widget_app_toDo/text_form_field_app.dart';
import '../../../core/widget_app_toDo/text_widget_app.dart';
import '../../models/icon_models.dart';
import '../../models/user_app.dart';
import 'main_home_app_screen.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  static List<DropDownFormField> list = [
    DropDownFormField(
      iconModel: IconModels.iconHome,
      text: "Home",
    ),
    DropDownFormField(
      iconModel: IconModels.iconWork,
      text: "Work",
    ),
    DropDownFormField(
      iconModel: IconModels.iconPerson,
      text: "Person",
    ),
  ];

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: IconPop(),
        title: TextWidgetApp(
          text: "Add Task",
          fontWeight: FontWeight.w300,
          fontSize: 19,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: MyColors.whiteColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: DropdownButtonFormField<DropDownFormField>(
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    labelText: "Task Group",
                    labelStyle: TextStyle(
                      fontSize: 9,
                      color: MyColors.labelTextColor,
                    ),
                    // prefixIcon: selectedItem != null
                    //     ? Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: SvgPicture.asset(
                    //     selectedItem!.iconModel.icon,
                    //     width: 24,
                    //     height: 24,
                    //     color: selectedItem!.iconModel.iconColor,
                    //   ),
                    // )
                    //     : null,
                    hintText: "Select task group",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                      color: MyColors.labelTextColor,
                    ),
                  ),
                  items: AddTaskPage.list.map(
                    (e) {
                      return DropdownMenuItem(
                        value: e,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              e.iconModel.icon,
                              width: 24,
                              height: 24,
                              colorFilter: ColorFilter.mode(
                                  e.iconModel.iconColor == MyColors.whiteColor
                                      ? MyColors.containerWorkColor
                                      : e.iconModel.iconColor,
                                  BlendMode.srcIn),
                            ),
                            const SizedBox(width: 10),
                            TextWidgetApp(
                              text: e.text,
                              fontSize: 16,
                              color: MyColors.labelTextColor,
                            ),
                          ],
                        ),
                      );
                    },
                  ).toList(),
                  onChanged: (value) {},
                ),
              ),
              TextFormFieldApp(
                onFieldSubmitted: (value1) {},
                controller: nameController,
                hintText: "Task Name",
                labelText: "Enter task name",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                radius: 15,
              ),
              TextFormFieldApp(
                onFieldSubmitted: (value2) {},
                controller: nameController,
                hintText: "Description",
                labelText: "Enter task description . . . ",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                radius: 15,
                maxLine: 5,
              ),
              const SizedBox(height: 16),
              TextButtonWidgetGo(
                text: "Save",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeMainPage(user: User(name: '')),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
