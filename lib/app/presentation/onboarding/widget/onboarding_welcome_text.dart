import 'package:count_me/app/components/constants/app_colors.dart';
import 'package:count_me/app/components/constants/app_strings.dart';
import 'package:count_me/app/components/widgets/custom_text.dart';
import 'package:flutter/material.dart';

Row onboardingWelcomeText() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        customText(
          title: AppStrings.welcome,
          color: AppColors.grey,
          fontSize: 22,
          fontWeight: FontWeight.normal,
        ),
        customText(
          title: AppStrings.calorieTracker,
          color: AppColors.grey,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
