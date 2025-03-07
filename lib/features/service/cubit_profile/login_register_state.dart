import 'package:nti_proj/features/models/user_app.dart';

class LoginRegisterState {}

class LoginRegisterInitial extends LoginRegisterState {}

class LoginRegisterSuccess extends LoginRegisterState {
  final User userLogin;

  LoginRegisterSuccess({required this.userLogin});
}

class LoginRegisterFailed extends LoginRegisterState {
  String message;

  LoginRegisterFailed({required this.message});
}
