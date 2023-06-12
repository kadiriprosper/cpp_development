import 'package:cpp_development/screen/auth/login_screen.dart';
import 'package:cpp_development/screen/auth/registration_screen.dart';
import 'package:cpp_development/screen/onboarding/page1.dart';
import 'package:cpp_development/screen/onboarding/page2.dart';
import 'package:cpp_development/screen/onboarding/page3.dart';
import 'package:cpp_development/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pages = const <Widget>[Page1(), Page2(), Page3()];
  int currentIndex = 1;
  late PageController controller;
  @override
  Widget build(BuildContext context) {
    controller = PageController(
      initialPage: 0,
    );
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            allowImplicitScrolling: true,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value + 1;
              });
            },
            children: pages,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: LinearProgressIndicator(
              semanticsLabel: 'onboarding progress',
              backgroundColor: Colors.black,
              minHeight: 10,
              color: Colors.white,
              value: currentIndex / 3,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10).copyWith(bottom: 50),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    //TODO: When you reach the final page,
                    //TODO: write a code to change the value of text
                    label: currentIndex != 3 ? 'Skip' : 'Register',
                    buttonColor: Colors.white,
                    onPressed: () {
                      currentIndex != 3
                          ? setState(
                              () {
                                controller.animateToPage(
                                  2,
                                  duration: const Duration(
                                    milliseconds: 250,
                                  ),
                                  curve: Curves.linear,
                                );
                              },
                            )
                          : Get.to(() => const RegistrationScreen());
                    },
                    textColor: Colors.black,
                  ),
                  CustomButton(
                    label: currentIndex != 3 ? 'Next' : 'Login',
                    buttonColor: Colors.black,
                    onPressed: () {
                      currentIndex != 3
                          ? setState(
                              () {
                                controller.nextPage(
                                  duration: const Duration(milliseconds: 250),
                                  curve: Curves.linear,
                                );
                              },
                            )
                          : Get.to(() => const LoginScreen());
                    },
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

