import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_proj/pages/test_cubit_screen.dart';

import '../core/resources/Colors/my_colors.dart';
import '../core/widget_app_toDo/text_button_widget_app.dart';
import '../features/models/user_input_inf.dart';
import '../test_cubit.dart';
import '../test_state.dart';
import '../widget/text_form.dart';
import '../widget/text_widget.dart';

class TaskTextFormPage2 extends StatelessWidget {
  const TaskTextFormPage2({super.key});

  @override
  Widget build(BuildContext context1) {
    final UserInputInfo user1 = UserInputInfo(
      name: "",
      age: "",
      phone: "",
      email: "",
      password: "",
    );
    return BlocProvider(
      create: (context) => TestCubit(
        user: user1,
      ),
      child: Scaffold(
        backgroundColor: MyColors.backgroundScaffoldColor,
        appBar: AppBar(
          backgroundColor: MyColors.backgroundScaffoldColor,
          title: TextWidget(
            text: "Test Cubit",
            fontSize: 19,
            fontWeight: FontWeight.w300,
            color: MyColors.textBlackColor,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: BlocConsumer<TestCubit, TestState>(
              listener: (context, state) {
                if (state is TestSuccess) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return TestCubitApl(user: state.user);
                      },
                    ),
                  );
                } else if (state is TestError) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                        backgroundColor: MyColors.greenColor,
                        content: Text("Error"),
                        title: Text(state.message),
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Ok"),
                          )
                        ]),
                  );
                } else if (state is TestLoading) {
                  Center(
                    child: CircularProgressIndicator(
                      color: MyColors.greenColor,
                    ),
                  );
                }
              },
              builder: (context, state) {
                final cubit = context.read<TestCubit>();
                return Column(
                  spacing: 100,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 15,
                      children: [
                        TaskTextForm(
                          onFieldSubmitted: (name) {
                            cubit.user.name = name;
                          },
                          keyboardType: TextInputType.name,
                          hintText: "name",
                          labelText: "Enter Name",
                        ),
                        TaskTextForm(
                          onFieldSubmitted: (age) {
                            cubit.user.age = age;
                          },
                          keyboardType: TextInputType.number,
                          hintText: "Enter your age",
                          labelText: "age",
                        ),
                        TaskTextForm(
                          onFieldSubmitted: (phone) {
                            cubit.user.phone = phone;
                          },
                          keyboardType: TextInputType.phone,
                          hintText: "Enter your Phone",
                          labelText: "phone Number",
                        ),
                        TaskTextForm(
                          onFieldSubmitted: (email) {
                            cubit.user.email = email;
                          },
                          keyboardType: TextInputType.emailAddress,
                          hintText: "Enter your Email",
                          labelText: "Email",
                        ),
                        TaskTextForm(
                          onFieldSubmitted: (pass) {
                            cubit.user.password = pass;
                          },
                          keyboardType: TextInputType.visiblePassword,
                          hintText: "Enter your Password",
                          labelText: "Password",
                        ),
                      ],
                    ),
                    TextButtonWidgetGo(
                      text: "Save ",
                      onTap: () {
                        cubit.submit();
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
