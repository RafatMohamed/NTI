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
