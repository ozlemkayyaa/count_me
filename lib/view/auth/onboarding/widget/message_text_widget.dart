import 'package:count_me/core/components/index.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app/index.dart';

class MessageTextWidget extends StatelessWidget {
  const MessageTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          title: AppStrings.onboardingText,
          color: AppColors.mainGreen,
          fontSize: 22,
          fontWeight: FontWeight.normal,
        ),
        CustomText(
          title: AppStrings.onboardingTextContinue,
          color: AppColors.mainGreen,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
