import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:count_me/core/constants/enums/index.dart';
import 'package:count_me/core/init/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTextFieldTheme {
  AppTextFieldTheme._();

  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppColors.grey,
    suffixIconColor: AppColors.grey,
    labelStyle:
        AppTextTheme.textTheme.labelLarge?.copyWith(color: AppColors.grey),
    hintStyle: AppTextTheme.textTheme.labelLarge,
    errorStyle: AppTextTheme.textTheme.labelLarge?.copyWith(color: Colors.red),
    floatingLabelStyle: AppTextTheme.textTheme.labelSmall
        ?.copyWith(color: AppColors.mainGreen, fontWeight: FontWeight.w300),
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
    contentPadding: const EdgeInsets.only(top: 18, bottom: 18, left: 32),
  );
}
