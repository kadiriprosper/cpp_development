import 'package:flutter/material.dart';

class CustomButton1 extends StatelessWidget {
  const CustomButton1({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.bakgroundColor,
  });

  final Icon icon;
  final VoidCallback onPressed;
  final Color bakgroundColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color:  bakgroundColor,
      minWidth: MediaQuery.of(context).size.width / 2.5,
      height: 55,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(width: 2, color: Colors.black),
      ),
      onPressed: onPressed,
      child: icon,
    );
  }
}
