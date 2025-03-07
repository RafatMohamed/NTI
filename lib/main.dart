import 'package:flutter/material.dart';

import 'core/resources/Colors/my_colors.dart';
import 'features/ui/pages_app/profile_page_app_screen.dart';
import 'features/ui/pages_app/splach_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'lib/features/ui/pages_app',
      routes: {
        '/profile_page_app_screen.dart': (context) => ProfilePageApp(),
      },
      theme: ThemeData(
        fontFamily: "LexendDeca",
        appBarTheme: AppBarTheme(
          backgroundColor: MyColors.backgroundScaffoldColor,
          elevation: 0,
        ),
        scaffoldBackgroundColor: MyColors.backgroundScaffoldColor,
      ),
      title: "To Do",
      debugShowCheckedModeBanner: false,
      home: LetsStart(),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// // 🎯 User Model
// class UserInputInfo {
//   String name;
//   String age;
//   String phone;
//   String email;
//   String password;
//
//   UserInputInfo({
//     required this.name,
//     required this.age,
//     required this.phone,
//     required this.email,
//     required this.password,
//   });
// }
//
// // 🎯 Cubit States
// abstract class TestState {}
//
// class TestInitial extends TestState {}
//
// class TestSuccess extends TestState {
//   final UserInputInfo user;
//   TestSuccess({required this.user});
// }
//
// class TestError extends TestState {
//   final String message;
//   TestError({required this.message});
// }
//
// // 🎯 TestCubit Logic
// class TestCubit extends Cubit<TestState> {
//   UserInputInfo user;
//
//   TestCubit({required this.user}) : super(TestInitial());
//
//   void updateUser({
//     String? name,
//     String? age,
//     String? phone,
//     String? email,
//     String? password,
//   }) {
//     user = UserInputInfo(
//       name: name ?? user.name,
//       age: age ?? user.age,
//       phone: phone ?? user.phone,
//       email: email ?? user.email,
//       password: password ?? user.password,
//     );
//     emit(TestInitial()); // Updates state to trigger UI rebuild
//   }
//
//   void submit() {
//     if (user.name.isEmpty ||
//         user.age.isEmpty ||
//         user.phone.isEmpty ||
//         user.email.isEmpty ||
//         user.password.isEmpty) {
//       emit(TestError(message: "All fields are required!"));
//     } else {
//       emit(TestSuccess(user: user));
//     }
//   }
// }
//
// // 🎯 Main Page
// class TaskTextFormPage extends StatelessWidget {
//   const TaskTextFormPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final UserInputInfo user1 = UserInputInfo(
//       name: '',
//       age: '',
//       phone: '',
//       email: '',
//       password: '',
//     );
//
//     return BlocProvider(
//       create: (context) => TestCubit(user: user1),
//       child: Scaffold(
//         appBar: AppBar(title: const Text("Test Cubit")),
//         body: SingleChildScrollView(
//           padding: const EdgeInsets.all(20),
//           child: BlocConsumer<TestCubit, TestState>(
//             listener: (context, state) {
//               if (state is TestError) {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text(state.message),
//                     backgroundColor: Colors.red,
//                   ),
//                 );
//               } else if (state is TestSuccess) {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => TestCubitApl(user: state.user),
//                   ),
//                 );
//               }
//             },
//             builder: (context, state) {
//               final cubit_setting = context.read<TestCubit>();
//
//               return Column(
//                 children: [
//                   TextField(
//                     textInputAction: TextInputAction.next,
//                     onSubmitted: (value) => cubit_setting.updateUser(name: value),
//                     decoration: const InputDecoration(labelText: "Enter Name"),
//                   ),
//                   TextField(
//                     textInputAction: TextInputAction.next,
//                     onSubmitted: (value) => cubit_setting.updateUser(age: value),
//                     keyboardType: TextInputType.number,
//                     decoration: const InputDecoration(labelText: "Enter Age"),
//                   ),
//                   TextField(
//                     textInputAction: TextInputAction.next,
//                     onSubmitted: (value) => cubit_setting.updateUser(phone: value),
//                     keyboardType: TextInputType.phone,
//                     decoration: const InputDecoration(labelText: "Enter Phone"),
//                   ),
//                   TextField(
//                     textInputAction: TextInputAction.next,
//                     onSubmitted: (value) => cubit_setting.updateUser(email: value),
//                     keyboardType: TextInputType.emailAddress,
//                     decoration: const InputDecoration(labelText: "Enter Email"),
//                   ),
//                   TextField(
//                     textInputAction: TextInputAction.next,
//                     onSubmitted: (value) => cubit_setting.updateUser(password: value),
//                     obscureText: true,
//                     decoration: const InputDecoration(labelText: "Enter Password"),
//                   ),
//                   const SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: () {
//                       cubit_setting.submit();
//                     },
//                     child: const Text("Save"),
//                   ),
//                 ],
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // 🎯 Second Page (Passing user directly)
// class TestCubitApl extends StatelessWidget {
//   final UserInputInfo user;
//
//   const TestCubitApl({super.key, required this.user});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("User Details"),
//         leading: IconButton(
//           onPressed: () => Navigator.pop(context),
//           icon: const Icon(Icons.arrow_back),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             rowItem("User Name: ", user.name),
//             rowItem("User Age: ", user.age),
//             rowItem("User Phone: ", user.phone),
//             rowItem("User Email: ", user.email),
//             rowItem("User Password: ", user.password),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget rowItem(String label, String value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 5),
//       child: Row(
//         children: [
//           Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
//           Text(value),
//         ],
//       ),
//     );
//   }
// }
