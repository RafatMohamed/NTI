import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/widget_app_toDo/text_button_widget_app.dart';
import '../features/service/cubit_setting/setting_state.dart';
import '../features/service/cubit_setting/settings_cubit.dart';
import '../widget/icon_widget.dart';
import '../widget/text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ButtonTextCubit(ButtonTextInitial('Button Text')),
      child: Scaffold(
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
          child:
          TextButtonWidgetGo(text: 'Test Cubit ', onTap: () {},),
        ),
      ),
    );
  }
}
