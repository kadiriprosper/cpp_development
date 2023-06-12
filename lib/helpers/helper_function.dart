class HelperFunction {
  static String getTimeMessage() {
    var currentTime = DateTime.now().hour;
    if (currentTime >= 0 && currentTime < 12) {
      return 'Good Morning 🌥';
    } else if (currentTime >= 12 && currentTime < 5) {
      return 'Good Afternoon 🌤';
    } else {
      return 'Good evening 🌜';
    }
  }
}
