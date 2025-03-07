import 'features/models/user_input_inf.dart';

class TestState {}

class TestInitial extends TestState {}
class TestLoading extends TestState {}

class TestSuccess extends TestState {
  final UserInputInfo user;
  TestSuccess({required this.user});
}

class TestError extends TestState {
  String message;

  TestError({required this.message});
}

class LoginSuccess extends TestState {
  final UserInputInfo user;
  LoginSuccess({required this.user}) ;
  }

