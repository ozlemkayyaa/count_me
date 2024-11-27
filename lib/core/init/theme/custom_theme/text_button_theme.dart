import 'package:count_me/core/constants/app/index.dart';
import 'package:flutter/material.dart';

class AppTextButtontheme {
  AppTextButtontheme._();

  static final textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.mainGreen,
      textStyle: TextStyle(
        color: AppColors.mainGreen,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
