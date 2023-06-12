import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    required this.buttonColor,
    this.textColor = Colors.white,
    required this.onPressed,
    this.width,
  });

  final String label;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: Colors.black38,
          width: 1.5,
        ),
      ),
      height: 50,
      textColor: textColor,
      minWidth: width ?? MediaQuery.of(context).size.width / 2.5,
      child: Text(label),
    );
  }
}
