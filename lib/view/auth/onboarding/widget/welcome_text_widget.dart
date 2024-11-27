import 'package:flutter/material.dart';

import '../../../../core/components/index.dart';
import '../../../../core/constants/app/index.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          title: AppStrings.welcome,
          color: AppColors.grey,
          fontSize: 22,
          fontWeight: FontWeight.normal,
        ),
        CustomText(
          title: AppStrings.calorieTracker,
          color: AppColors.grey,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
