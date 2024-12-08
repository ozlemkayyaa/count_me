import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/constants/enums/index.dart';
import 'package:flutter/material.dart';

class AppOutlinedButtontheme {
  AppOutlinedButtontheme._();

  static final outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: AppColors.white,
      overlayColor: Colors.transparent,
      alignment: Alignment.center,
      elevation: 0,
      minimumSize: const Size(350, 65),
      side: BorderSide(color: AppColors.lightGrey),
      shape: RoundedRectangleBorder(
        borderRadius: BorderHelper.small.circularRadius,
      ),
      foregroundColor: AppColors.black,
      textStyle: const TextStyle(
        color: AppColors.black,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      padding: const EdgeInsets.symmetric(vertical: 12),
    ),
  );
}
