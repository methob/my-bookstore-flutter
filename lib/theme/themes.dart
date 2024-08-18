
import 'package:bookstore_thais/theme/colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {

  static final ThemeData themeData = ThemeData(
      primaryColor: AppColors.primary,
      brightness: Brightness.light
  );

}