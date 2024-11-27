import 'package:flutter/material.dart';

import '../../../../core/constants/app/index.dart';
import '../../../../core/components/text/custom_text.dart';

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
