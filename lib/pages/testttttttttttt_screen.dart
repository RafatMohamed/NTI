import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// User Model
class UserInputInfo {
  String name;
  String age;
  String phone;
  String email;
  String password;

  UserInputInfo({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.age,
  });
}

// Cubit States
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
  LoginSuccess({required this.user});
}

// Cubit
class TestCubit extends Cubit<TestState> {
  UserInputInfo user;
  TestCubit({required this.user}) : super(TestInitial());

  void submit() async {
    emit(TestLoading());
    await Future.delayed(Duration(seconds: 2));
    try {
      if (user.name.isNotEmpty &&
          user.age.isNotEmpty &&
          user.phone.isNotEmpty &&
          user.email.isNotEmpty &&
          user.password.isNotEmpty) {
        emit(TestSuccess(user: user));
      } else {
        emit(TestError(message: "Error: Please fill all fields!"));
      }
    } catch (e) {
      emit(TestError(message: "Error occurred: $e"));
    }
  }

  void submitLogin({required String email, required String password}) {
    emit(TestLoading());
    Future.delayed(Duration(seconds: 1), () {
      if (user.email == email && user.password == password) {
        emit(LoginSuccess(user: user));
      } else {
        emit(TestError(message: "Invalid Email or Password!"));
      }
    });
  }
}

// Registration Screen
class TaskTextFormPage22 extends StatelessWidget {
  const TaskTextFormPage22({super.key});

  @override
  Widget build(BuildContext context) {
    final UserInputInfo user = UserInputInfo(
      name: "",
      age: "",
      phone: "",
      email: "",
      password: "",
    );

    return BlocProvider(
      create: (context) => TestCubit(user: user),
      child: Scaffold(
        appBar: AppBar(title: Text("Register")),
        body: BlocConsumer<TestCubit, TestState>(
          listener: (context, state) {
            if (state is TestSuccess) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TestCubitApl(user: state.user),
                ),
              );
            } else if (state is TestError) {
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
            final cubit = context.read<TestCubit>();

            return Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: "Enter Name"),
                    onChanged: (name) => cubit.user.name = name,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Enter Age"),
                    keyboardType: TextInputType.number,
                    onChanged: (age) => cubit.user.age = age,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Enter Phone"),
                    keyboardType: TextInputType.phone,
                    onChanged: (phone) => cubit.user.phone = phone,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Enter Email"),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (email) => cubit.user.email = email,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Enter Password"),
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (pass) => cubit.user.password = pass,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => cubit.submit(),
                    child: Text("Register"),
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

// Screen to Show User Info
class TestCubitApl extends StatelessWidget {
  const TestCubitApl({super.key, required this.user});
  final UserInputInfo user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Info")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name: ${user.name}"),
            Text("Age: ${user.age}"),
            Text("Phone: ${user.phone}"),
            Text("Email: ${user.email}"),
            Text("Password: ${user.password}"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(user: user),
                ),
              ),
              child: Text("Go to Login"),
            ),
          ],
        ),
      ),
    );
  }
}

// Login Screen
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, required this.user});
  final UserInputInfo user;

  @override
  Widget build(BuildContext context) {
    String enteredEmail = "";
    String enteredPassword = "";

    return BlocProvider(
      create: (context) => TestCubit(user: user),
      child: Scaffold(
        appBar: AppBar(title: Text("Login")),
        body: BlocConsumer<TestCubit, TestState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HiUserScreen()));
            } else if (state is TestError) {
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
            final cubit = context.read<TestCubit>();

            return Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: "Enter Email"),
                    onChanged: (email) => enteredEmail = email,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Enter Password"),
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (password) => enteredPassword = password,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => cubit.submitLogin(email: enteredEmail, password: enteredPassword),
                    child: Text("Login"),
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

// Screen After Successful Login
class HiUserScreen extends StatelessWidget {
  const HiUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Hi User, Welcome!")),
    );
  }
}
