import 'package:count_me/app/components/constants/app_colors.dart';
import 'package:count_me/app/components/constants/app_strings.dart';
import 'package:count_me/app/components/widgets/custom_text.dart';
import 'package:flutter/material.dart';

Column onboardingMessageText() => Column(
      children: [
        customText(
          title: AppStrings.onboardingText,
          color: AppColors.mainGreen,
          fontSize: 22,
          fontWeight: FontWeight.normal,
        ),
        customText(
          title: AppStrings.onboardingTextContinue,
          color: AppColors.mainGreen,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
