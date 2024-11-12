import 'package:count_me/app/components/constants/app_colors.dart';
import 'package:count_me/app/components/constants/app_strings.dart';
import 'package:count_me/app/components/enums/image_constants.dart';
import 'package:count_me/app/components/enums/padding_helper.dart';
import 'package:count_me/app/components/enums/sized_box_helper.dart';
import 'package:count_me/app/components/widgets/custom_elevated_button.dart';
import 'package:count_me/app/components/widgets/custom_text.dart';
import 'package:count_me/app/presentation/onboarding/widget/onboarding_account_message_text.dart';
import 'package:count_me/app/presentation/onboarding/widget/onboarding_message_text.dart';
import 'package:count_me/app/presentation/onboarding/widget/onboarding_welcome_text.dart';
import 'package:count_me/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

Padding onboardingBody(BuildContext context) => Padding(
      padding: PaddingHelper.fixed.getPadding(left: true, right: true),
      child: Column(
        children: [
          SizedBox(height: SizedBoxHeight.top.value),
          ImageConstants.onboarding.toImage(
            height: context.screenHeight * 0.4,
          ),
          SizedBox(height: SizedBoxHeight.large.value),

          // Welcome Text
          onboardingWelcomeText(),
          SizedBox(height: SizedBoxHeight.small.value),

          // Message
          onboardingMessageText(),
          SizedBox(height: SizedBoxHeight.xxxLarge.value),

          // Get Started Button
          customElevatedButton(
            backgroundColor: AppColors.mainGreen,
            onPressed: () {},
            child: customText(
                title: AppStrings.onboardingButton,
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: SizedBoxHeight.small.value),

          // Already Account
          onboardingAccountMessageText(),
        ],
      ),
    );
