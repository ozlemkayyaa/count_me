import 'package:count_me/app/components/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import '../../../components/constants/index.dart';

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
