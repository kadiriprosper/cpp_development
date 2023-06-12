import 'package:flutter/material.dart';


class SettingSection extends StatelessWidget {
  const SettingSection({
    super.key,
    required this.sectionWidget,
  });

  final List<Widget> sectionWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      // height: 140,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 233, 233, 233),
        border: Border.all(
          color: const Color.fromARGB(255, 124, 124, 124),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: sectionWidget,
      ),
    );
  }
}
