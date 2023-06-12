class UserModel {
  UserModel({
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.password,
    this.completedCourses = 0,
  });
  String username;
  String password;
  String firstName;
  String lastName;
  int completedCourses;

}
