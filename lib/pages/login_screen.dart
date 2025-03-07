import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_proj/features/models/user_input_inf.dart';

import '../core/resources/Colors/my_colors.dart';
import '../core/widget_app_toDo/text_button_widget_app.dart';
import '../test_cubit.dart';
import '../test_state.dart';
import '../widget/text_form.dart';
import 'hi_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
    required this.user1,
  });

  final UserInputInfo user1;

  @override
  Widget build(BuildContext context) {
    String inputEmail = "";
    String inputPassword = "";
    return BlocProvider(
      create: (context) => TestCubit(
        user: user1,
      ),
      child: Scaffold(
        body: BlocConsumer<TestCubit, TestState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HiUSer()));
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
            }
          },
          builder: (context, state) {
            final cubit = context.read<TestCubit>();
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TaskTextForm(
                    onFieldSubmitted: (email) {
                      inputEmail = email;
                    },
                    keyboardType: TextInputType.emailAddress,
                    hintText: "Email",
                    labelText: "Enter Email",
                  ),
                  TaskTextForm(
                    onFieldSubmitted: (password) {
                      inputPassword = password;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    hintText: "Enter your password",
                    labelText: "Password",
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  TextButtonWidgetGo(
                    text: "Save ",
                    onTap: () {
                      cubit.submitLogin(
                          email: inputEmail, password: inputPassword);
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
