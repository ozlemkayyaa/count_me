import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme textTheme = TextTheme(
    // Display
    displayLarge: TextStyle().copyWith(
        fontSize: 30, fontWeight: FontWeight.w500, color: AppColors.black),
    displayMedium: TextStyle().copyWith(
        fontSize: 28, fontWeight: FontWeight.w600, color: AppColors.black),
    displaySmall: TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: AppColors.black),

    // Headline
    headlineLarge: TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w400, color: AppColors.black),
    headlineMedium: TextStyle().copyWith(
        fontSize: 22, fontWeight: FontWeight.w700, color: AppColors.black),
    headlineSmall: TextStyle().copyWith(
        fontSize: 22, fontWeight: FontWeight.w400, color: AppColors.black),

    // Title
    titleLarge: TextStyle().copyWith(
        fontSize: 20, fontWeight: FontWeight.w400, color: AppColors.black),
    titleMedium: TextStyle().copyWith(
        fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.black),
    titleSmall: TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.black),

    // Body
    bodyLarge: TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w500, color: AppColors.black),
    bodyMedium: TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.black),
    bodySmall: TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.black),

    // Label
    labelLarge: TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.black),
    labelMedium: TextStyle().copyWith(
        fontSize: 13, fontWeight: FontWeight.w300, color: AppColors.black),
    labelSmall: TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.black),
  );
}
