import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Main_Page/screen_main_page.dart';
import 'package:netflix/core/colors/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.transparent),
          iconTheme: const IconThemeData(color: Colorwhite),
          textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white),
              bodyMedium: TextStyle(color: Colors.white)),
          scaffoldBackgroundColor: backGroundColor),
      home: ScreenMainPage(),
    );
  }
}
