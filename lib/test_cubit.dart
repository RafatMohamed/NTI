import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_proj/test_state.dart';
import 'features/models/user_input_inf.dart';

class TestCubit extends Cubit<TestState> {
  UserInputInfo user;
  TestCubit({required this.user, }) : super(TestInitial());

  void submit() async {
    emit(TestLoading());
    await Future.delayed(Duration(seconds: 10));
    try {
      if (user.name.isNotEmpty &&
          user.age.isNotEmpty &&
          user.phone.isNotEmpty &&
          user.email.isNotEmpty &&
          user.password.isNotEmpty) {
        emit(TestSuccess(user: user));
      } else {
        emit(TestError(message: "Error when Enter Your Data"));
      }
    } catch (e) {
      emit(TestError(message: "Error when Enter Your Data :$e"));
    }
  }

  void submitLogin({required String email,required String password}) {
    emit(TestLoading());

    if (user.email == email && user.password == password) {
      emit(LoginSuccess(user: user));
    } else {
      emit(TestError(message: "Invalid email or password"));
    }
  }
  }






