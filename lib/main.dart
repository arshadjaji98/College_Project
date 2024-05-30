import 'package:edu_unity/res/constant/color/color.dart';
import 'package:edu_unity/res/constant/font/font.dart';
import 'package:edu_unity/view/auth/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edu Unity',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          cardColor: Colors.white,
          scaffoldBackgroundColor: Colors.grey.shade200,
          appBarTheme: const AppBarTheme(
              color: TColors.darkBlue,
              centerTitle: true,
              iconTheme: IconThemeData(color: Colors.white),
              actionsIconTheme: IconThemeData(color: Colors.white),
              titleTextStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: TFont.ralewayBold,
                  color: Colors.white,
                  fontSize: 16))),
      home: const LoginScreen(),
    );
  }
}
