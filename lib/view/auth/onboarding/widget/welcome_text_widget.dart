import 'package:flutter/material.dart';
import '../../../../core/constants/app/index.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.welcome,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: AppColors.grey),
        ),
        Text(
          AppStrings.calorieTracker1,
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: AppColors.grey),
        ),
        Text(
          AppStrings.calorieTracker2,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: AppColors.grey, fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
