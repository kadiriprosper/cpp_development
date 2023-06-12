import 'package:cpp_development/screen/auth/login_screen.dart';
import 'package:cpp_development/screen/auth/registration_screen.dart';
import 'package:cpp_development/screen/mainscreens/main_screen.dart';
import 'package:cpp_development/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
