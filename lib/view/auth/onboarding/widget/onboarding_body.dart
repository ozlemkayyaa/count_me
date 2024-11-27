import 'package:count_me/core/components/index.dart';

import '../../../../core/constants/app/index.dart';
import 'index.dart';
import '../../../../core/extension/context_extension.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/enums/index.dart';

Padding onboardingBody(BuildContext context) => Padding(
      padding: PaddingHelper.fixed.getPadding(left: true, right: true),
      child: Column(
        children: [
          SizedBox(height: SizedBoxHeight.top.value),

          // Image
          ImageEnum.onboarding.toImage(
            height: context.screenHeight * 0.4,
          ),
          SizedBox(height: SizedBoxHeight.large.value),

          // Welcome Text
          onboardingWelcomeText(),
          SizedBox(height: SizedBoxHeight.small.value),

          // Message
          onboardingMessageText(),
          SizedBox(height: SizedBoxHeight.xxLarge.value),

          // Get Started Button
          customElevatedButton(
            backgroundColor: AppColors.mainGreen,
            onPressed: () {
              // Modal Bottom Sheet
              showModalBottomSheet<void>(
                isDismissible: true,
                context: context,
                builder: (context) => customModalBottomSheet(),
              );
            },
            child: customText(
                title: AppStrings.onboardingButton,
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: SizedBoxHeight.small.value),

          // Don't have an account? -> Register Screen
          onboardingAccountMessageText(context),
        ],
      ),
    );
