import 'package:cpp_development/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        label: 'Downloads',
      ).build(context),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 10,
          separatorBuilder: (context, index) => const Divider(
            height: 2,
            color: Colors.blue,
          ),
          itemBuilder: (context, index) {
            //TODO: Write code to fetch the downloads from the user storage
            return DownloadedCourseWidget(
              courseTitle: 'Into to c++',
              courseSubtitle: 'Video - 8 mins',
              onDelete: () {},
              onTapCourse: () {},
            );
          },
        ),
      ),
    );
  }
}

class DownloadedCourseWidget extends StatelessWidget {
  const DownloadedCourseWidget({
    super.key,
    required this.onTapCourse,
    required this.onDelete,
    required this.courseTitle,
    required this.courseSubtitle,
  });

  final VoidCallback onTapCourse;
  final VoidCallback onDelete;
  //TODO: Remove this and put a variable of type Course
  final String courseTitle;
  final String courseSubtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTapCourse,
      leading: const Icon(
        //TODO:  Check wether the course has been complited
        Icons.check_circle,
        color: Colors.green,
        size: 30,
      ),
      trailing: IconButton(
        onPressed: onDelete,
        icon: const Icon(
          MdiIcons.delete,
          color: Colors.black,
        ),
        iconSize: 30,
      ),
      title: Text(
        //TODO: Put the title of the course here
        courseTitle,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        //TODO: Put the download type and the duration here
        courseSubtitle,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.grey,
          fontSize: 12,
        ),
      ),
    );
  }
}
