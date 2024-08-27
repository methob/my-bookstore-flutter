
import 'package:bookstore_thais/theme/colors.dart';
import 'package:flutter/material.dart';

class IconNavigationBarWithCustomSelector extends StatelessWidget {

  final IconData icon;
  final int index;
  final int currentIndex;

  const IconNavigationBarWithCustomSelector({super.key, required this.icon, required this.index, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 32,
      decoration: index == currentIndex ? BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.black, width: 2)
      ): null,
      child: Icon(icon, color: index == currentIndex ? AppColors.primary : Colors.black),
    );
  }
}