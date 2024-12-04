import 'package:count_me/core/extension/index.dart';
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
          style: context.textTheme.headlineLarge
              ?.copyWith(color: AppColors.mainGreen),
        ),
        Text(
          AppStrings.onboardingTextContinue,
          style: context.textTheme.displaySmall
              ?.copyWith(color: AppColors.mainGreen),
        ),
      ],
    );
  }
}
