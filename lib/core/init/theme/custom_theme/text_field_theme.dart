import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:count_me/core/constants/enums/index.dart';
import 'package:flutter/material.dart';

class AppTextFieldTheme {
  AppTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppColors.grey,
    suffixIconColor: AppColors.grey,
    labelStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.grey,
    ),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderHelper.fix.circularRadius,
      borderSide: const BorderSide(width: 1, color: AppColors.lightGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderHelper.fix.circularRadius,
      borderSide: const BorderSide(width: 1, color: AppColors.lightGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderHelper.fix.circularRadius,
      borderSide: const BorderSide(width: 1, color: AppColors.mainGreen),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderHelper.fix.circularRadius,
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderHelper.fix.circularRadius,
      borderSide: const BorderSide(width: 1, color: AppColors.mainGreen),
    ),
    contentPadding: const EdgeInsets.only(top: 18, bottom: 18),
  );
}
