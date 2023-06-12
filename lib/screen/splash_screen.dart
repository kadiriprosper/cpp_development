import 'package:cpp_development/screen/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        //TODO: Put setup computations here
        //TODO: CONT'd Prolly use the snapshot in the builder function
        future: Future.delayed(
          const Duration(seconds: 3),
          () => Get.to(
            const OnboardingScreen(),
          ),
        ),
        builder: (context, snapshot) {
          return Center(
            child: Image.asset(
              'assets/logo.jpeg',
              fit: BoxFit.contain,
            ),
          );
        },
      ),
    );
  }
}
