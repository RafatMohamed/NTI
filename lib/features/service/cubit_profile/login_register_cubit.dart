import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nti_proj/features/models/user_app.dart';

import 'login_register_state.dart';

class LoginRegisterCubit extends Cubit<LoginRegisterState> {
  LoginRegisterCubit({required this.userLogin}) : super(LoginRegisterInitial());
  final User userLogin;

  Future<void> pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      userLogin.imgProfile = File(pickedFile.path);
    }
  }

  void login() {
    try {
      if (userLogin.name.isNotEmpty) {
        emit(LoginRegisterSuccess(userLogin: userLogin));
      } else {
        emit(LoginRegisterFailed(message: "Something went wrong"));
      }
    } catch (e) {
      emit(LoginRegisterFailed(message: "Something went wrong $e"));
    }
  }
}
