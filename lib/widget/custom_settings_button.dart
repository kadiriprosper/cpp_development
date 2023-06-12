import 'package:flutter/material.dart';

class CustomSettingsButton extends StatelessWidget {
  const CustomSettingsButton(
      {super.key,
      required this.label,
      required this.onPressed,
      this.bgColor = const Color.fromARGB(255, 1, 32, 58),
      this.top,
      this.roundCorners});

  final String label;
  final VoidCallback onPressed;
  final Color bgColor;
  final bool? top;
  final bool? roundCorners;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
          borderRadius: roundCorners == true
              ? BorderRadius.circular(8)
              : BorderRadius.only(
                  topLeft: top == true ? Radius.circular(8) : Radius.zero,
                  topRight: top == true ? Radius.circular(8) : Radius.zero,
                  bottomLeft: top == false ? Radius.circular(8) : Radius.zero,
                  bottomRight: top == false ? Radius.circular(8) : Radius.zero,
                )),
      minWidth: double.infinity,
      color: bgColor,
      height: 50,
      child: Text(label),
    );
  }
}
