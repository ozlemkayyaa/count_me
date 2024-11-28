import 'package:flutter/material.dart';
import '../../../../core/constants/app/index.dart';

class MessageTextWidget extends StatelessWidget {
  const MessageTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.onboardingText,
          style: Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(color: AppColors.mainGreen),
        ),
        Text(
          AppStrings.onboardingTextContinue,
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(color: AppColors.mainGreen),
        ),
      ],
    );
  }
}
