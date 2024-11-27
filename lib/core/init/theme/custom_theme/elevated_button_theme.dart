import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/constants/enums/index.dart';
import 'package:flutter/material.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: const Size(320, 65),
      alignment: Alignment.center,
      elevation: 0,
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.mainGreen,
      disabledForegroundColor: AppColors.disableButtonGrey,
      disabledBackgroundColor: AppColors.disableButtonGrey,
      side: const BorderSide(color: AppColors.mainGreen),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
        color: AppColors.white,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderHelper.large.circularRadius,
      ),
    ),
  );
}
