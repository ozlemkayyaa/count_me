import '../../../../core/components/text/custom_text.dart';
import '../../../../core/constants/app/index.dart';
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
