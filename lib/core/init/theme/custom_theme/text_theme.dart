import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();

  static const TextStyle baseStyle = TextStyle(
    fontFamily: 'Poppins',
    color: AppColors.black,
  );

  static TextTheme textTheme = TextTheme(
    // Display
    displayLarge: baseStyle.copyWith(fontSize: 30, fontWeight: FontWeight.w500),
    displayMedium:
        baseStyle.copyWith(fontSize: 28, fontWeight: FontWeight.w600),
    displaySmall: baseStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w600),

    // Headline
    headlineLarge:
        baseStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w400),
    headlineMedium:
        baseStyle.copyWith(fontSize: 22, fontWeight: FontWeight.w600),
    headlineSmall:
        baseStyle.copyWith(fontSize: 22, fontWeight: FontWeight.w400),

    // Title
    titleLarge: baseStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w400),
    titleMedium: baseStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
    titleSmall: baseStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w600),

    // Body
    bodyLarge: baseStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
    bodyMedium: baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
    bodySmall: baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w400),

    // Label
    labelLarge: baseStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
    labelMedium: baseStyle.copyWith(fontSize: 13, fontWeight: FontWeight.w300),
    labelSmall: baseStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
  );
}
