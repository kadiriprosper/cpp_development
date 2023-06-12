import 'package:cpp_development/widget/custom_app_bar.dart';
import 'package:cpp_development/widget/custom_settings_button.dart';
import 'package:cpp_development/widget/settings_icon_widget.dart';
import 'package:cpp_development/widget/settings_section.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SettignsScreen extends StatelessWidget {
  const SettignsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        label: 'Account',
      ).build(context),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const CircleAvatar(
                radius: 83,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  //TODO: Add code to view user profile image
                  radius: 80,
                  backgroundColor: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Timi',
                //TODO: Change this to the user's name
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 36,
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SettingIconWidget(
                    //TODO: Put the amount of courses done
                    label: '12 courses',
                    icon: Icon(
                      Icons.workspace_premium,
                      color: Colors.black87,
                    ),
                  ),
                  SettingIconWidget(
                    //TODO: Put the amount of hours spend
                    label: '55 heus',
                    icon: Icon(
                      MdiIcons.timelapse,
                      color: Colors.black87,
                    ),
                  ),
                  SettingIconWidget(
                    //TODO: Current ranking of the person
                    //TODO: in light of how many quiz failed vs success
                    label: 'Grade A',
                    icon: Icon(
                      Icons.star,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SettingSection(
                sectionWidget: [
                  CustomSettingsButton(
                    onPressed: () {
                      //TODO: Write code to go to the bookmarks page
                    },
                    label: 'Bookmarks',
                    top: true,
                  ),
                  const SizedBox(height: 5),
                  CustomSettingsButton(
                    onPressed: () {
                      //TODO: Write code to go to the completed courses page
                    },
                    label: 'Completed Courses',
                  ),
                  const SizedBox(height: 5),
                  CustomSettingsButton(
                    onPressed: () {
                      //TODO: Write code to go to the payments page
                    },
                    label: 'Payment',
                    top: false,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SettingSection(
                sectionWidget: [
                  CustomSettingsButton(
                    onPressed: () {
                      //TODO: Write code to take user to cutomer care page
                    },
                    label: 'Customer Care',
                    top: false,
                    roundCorners: true,
                    bgColor: Colors.black,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SettingSection(
                sectionWidget: [
                  CustomSettingsButton(
                    onPressed: () {
                      //TODO: Write code to log the user out
                    },
                    label: 'Log Out',
                    top: false,
                    roundCorners: true,
                    bgColor: const Color.fromARGB(255, 163, 39, 31),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
