import 'package:cpp_development/screen/mainscreens/main_screen.dart';
import 'package:cpp_development/widget/custom_button.dart';
import 'package:cpp_development/widget/custom_button_1.dart';
import 'package:cpp_development/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
                'Registration',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 18),
              Form(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    CustomTextField(
                      controller: TextEditingController(),
                      label: 'First Name',
                      validator: (p0) {
                        //TODO: check to see if username is valid
                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    CustomTextField(
                      controller: TextEditingController(),
                      label: 'Last Name',
                      validator: (p0) {
                        //TODO: Check to see if the name is valid
                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    CustomTextField(
                      controller: TextEditingController(),
                      label: 'Email',
                      validator: (p0) {
                        //TODO: Check to see if email is valid
                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    CustomTextField(
                      controller: TextEditingController(),
                      label: 'Password',
                      validator: (p0) {
                        //TODO: Check to see if the pass is valid
                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    CustomTextField(
                      controller: TextEditingController(),
                      label: 'Confirm Password',
                      validator: (p0) {
                        //TODO: confirm pass and check if it is valid
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      label: 'Register',
                      buttonColor: Colors.black,
                      onPressed: () {
                        //TODO: code to login with email and password
                        Get.to(() => const MainScreen());
                      },
                      width: MediaQuery.of(context).size.width / 2,
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'or register with',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
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
