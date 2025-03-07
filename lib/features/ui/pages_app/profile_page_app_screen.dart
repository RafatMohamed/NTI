import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/resources/images/my_images.dart';
import '../../../core/widget_app_toDo/text_button_widget_app.dart';
import '../../../core/widget_app_toDo/text_form_field_app.dart';
import '../../models/user_app.dart';
import '../../service/cubit_profile/login_register_cubit.dart';
import '../../service/cubit_profile/login_register_state.dart';
import 'main_home_app_screen.dart';

class ProfilePageApp extends StatelessWidget {
  const ProfilePageApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final User user1 = User(
      name: "",
    );

    return BlocProvider(
      create: (context) => LoginRegisterCubit(userLogin: user1),
      child: Scaffold(
        body: Center(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(20),
                  bottomEnd: Radius.circular(20),
                ),
                child: Image.asset(
                  height: 445,
                  width: double.infinity,
                  MyImages.imageFlagpalestine,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 23),
                child: SingleChildScrollView(
                  child: BlocConsumer<LoginRegisterCubit, LoginRegisterState>(
                    listener: (context, state) {
                      if (state is LoginRegisterSuccess) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomeMainPage(
                                user: state.userLogin, // Pass the entire user object, not just the name
                              );
                            },
                          ),
                        );
                      }
                      if (state is LoginRegisterFailed) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Error"),
                            content: Text(state.message),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text("OK"),
                              )
                            ],
                          ),
                        );
                      }
                    },
                    builder: (context, state) {
                      final cubit = context.read<LoginRegisterCubit>();
                      return Column(
                        children: [
                          TextFormFieldApp(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Your Name';
                              } else {
                                Text(value);
                              }
                              return null;
                            },
                            onFieldSubmitted: (userInp) {
                              cubit.userLogin.name = userInp;
                            },
                            hintText: "type your name here",
                            labelText: "Your Name",
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            controller: TextEditingController(),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: cubit.userLogin.imgProfile != null
                                ? Image.file(
                              cubit.userLogin.imgProfile!,
                              height: 60,
                              width: 60,
                              fit: BoxFit.fill,
                            )
                                : Image.asset(
                              MyImages.imageFlagpalestine,
                              height: 60,
                              width: 60,
                              fit: BoxFit.fill,
                            ),
                          ),

                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: cubit.pickImage,
                            child: Text("Select Profile Photo"),
                          ),
                          SizedBox(
                            height: 63,
                          ),
                          TextButtonWidgetGo(
                              text: "Save",
                              onTap: () {
                                cubit.login();
                              }),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
