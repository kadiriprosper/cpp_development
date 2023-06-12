import 'package:cpp_development/screen/auth/registration_screen.dart';
import 'package:cpp_development/screen/mainscreens/main_screen.dart';
import 'package:cpp_development/widget/custom_button.dart';
import 'package:cpp_development/widget/custom_button_1.dart';
import 'package:cpp_development/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 100),
        child: Container(
          margin: const EdgeInsets.all(10).copyWith(top: 30),
          color: Colors.transparent,
          width: double.infinity,
          height: 50,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: IconButton(
              icon: const Icon(
                MdiIcons.arrowCollapse,
                size: 30,
              ),
              onPressed: () {
                //TODO: Code to go back to the previous page
                Get.back();
              },
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 15),
              Form(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    CustomTextField(
                      controller: TextEditingController(),
                      label: 'username',
                      validator: (p0) {
                        //TODO: check to see if username is valid
                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    CustomTextField(
                      controller: TextEditingController(),
                      label: 'password',
                      validator: (p0) {
                        //TODO: Check to see if the name and pass is valid
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      label: 'Log in',
                      buttonColor: Colors.black,
                      onPressed: () {
                        //TODO: code to login with email and password
                        Get.to(() => const MainScreen());
                      },
                      width: MediaQuery.of(context).size.width / 2,
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomButton1(
                          icon: const Icon(
                            MdiIcons.google,
                            size: 25,
                            color: Colors.red,
                          ),
                          bakgroundColor: Colors.black,
                          onPressed: () {
                            //TODO: Code to login with google
                          },
                        ),
                        CustomButton1(
                          icon: const Icon(
                            MdiIcons.apple,
                            size: 30,
                            color: Colors.white,
                          ),
                          bakgroundColor: Colors.black,
                          onPressed: () {
                            //TODO: Code to login with apple
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    MaterialButton(
                      onPressed: () {
                        //TODO: Code to reset the password
                      },
                      child: const Text(
                        'reset password',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account yet?',
                          style: TextStyle(color: Colors.black),
                        ),
                        MaterialButton(
                          onPressed: () {
                            //TODO: Go to registration screen
                            Get.to(() => const RegistrationScreen());
                          },
                          child: const Text(
                            'create account',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
