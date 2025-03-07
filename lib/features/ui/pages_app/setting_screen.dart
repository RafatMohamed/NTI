import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/resources/Colors/my_colors.dart';
import '../../../core/widget_app_toDo/icon_pop.dart';
import '../../../core/widget_app_toDo/text_widget_app.dart';
import '../../service/cubit_setting/setting_state.dart';
import '../../service/cubit_setting/settings_cubit.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingCubit(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: TextWidgetApp(
            text: "Settings",
            fontSize: 19,
            fontWeight: FontWeight.w300,
          ),
          leading: IconPop(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: BlocConsumer<SettingCubit, SettingState>(
            listener: (context, state) {},
            builder: (context, state) {
              final cubit = context.read<SettingCubit>();
              return Column(
                spacing: 40,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidgetApp(
                        text: "Notification",
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                      Switch(
                        hoverColor: MyColors.redColor,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        activeTrackColor: MyColors.greenColor,
                        activeColor: MyColors.whiteColor,
                        value: state.isValueSwitch,
                        onChanged: (value1) {
                          cubit.switchValue(value1);
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidgetApp(
                        text: "Enable Cloud",
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                      Checkbox(
                        activeColor: MyColors.greenColor,
                        materialTapTargetSize: MaterialTapTargetSize.padded,
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        side: BorderSide(
                          style: BorderStyle.solid,
                          strokeAlign: 20,
                          color: Colors.grey,
                        ),
                        value: state.isValueCheck,
                        onChanged: (value) {
                          cubit.checkBoxValue(value!);
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
