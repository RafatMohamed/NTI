import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../features/ui/pages_app/add_task_screen.dart';
import '../resources/Icons/my_icons.dart';

class IconAddTask extends StatelessWidget {
  const IconAddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20,),
      child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return AddTaskPage();
                },
              ),
            );
          },
          icon: SvgPicture.asset(
            MyIcons.iconAddTask,
            fit: BoxFit.fill,
            width: 24,
            height: 24,
          )),
    );
  }

}