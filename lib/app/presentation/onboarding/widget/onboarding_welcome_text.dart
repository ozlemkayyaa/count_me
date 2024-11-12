import 'package:count_me/app/components/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import '../../../components/constants/index.dart';

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
