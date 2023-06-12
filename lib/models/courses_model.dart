class CourseModel {
  CourseModel({
    required this.courseTitle,
    required this.courseLink,
    required this.courseType,
    required this.duration,
    required this.desription,
    this.completed = false,
    this.bookMarked = false,
  });

  String courseTitle;
  String courseType;
  String duration;
  String desription;
  String courseLink;
  bool completed;
  bool bookMarked;
}
