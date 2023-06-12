import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.label,
  });

  final String label;

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      title:  Text(
        label,
        style: const TextStyle(
          fontSize: 23,
        ),
      ),
      backgroundColor: Colors.white,
      foregroundColor: const Color.fromARGB(255, 49, 49, 49),
      elevation: 2,
    );
  }
}
