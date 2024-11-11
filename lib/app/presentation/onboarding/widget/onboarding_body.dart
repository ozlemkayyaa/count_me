import 'package:count_me/app/components/constants/app_colors.dart';
import 'package:count_me/app/components/constants/app_strings.dart';
import 'package:count_me/app/components/enums/image_constants.dart';
import 'package:count_me/app/components/helpers/padding_helper/padding_helper.dart';
import 'package:count_me/app/components/widgets/custom_elevated_button.dart';
import 'package:count_me/app/components/widgets/custom_text.dart';
import 'package:count_me/app/components/widgets/custom_text_button.dart';
import 'package:count_me/app/presentation/onboarding/widget/onboarding_message_text.dart';
import 'package:count_me/app/presentation/onboarding/widget/onboarding_welcome_text.dart';
import 'package:count_me/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

Padding onboardingBody(BuildContext context) => Padding(
      padding: PaddingHelper.top.getPadding(top: true),
      child: Padding(
        padding: PaddingHelper.fixed.getPadding(left: true, right: true),
        child: Column(
          children: [
            ImageConstants.onboarding.toImage(
              height: context.screenHeight * 0.410,
            ),
            Padding(padding: PaddingHelper.fixed.all),
            onboardingWelcomeText(),
            Padding(padding: PaddingHelper.small.all),
            onboardingMessageText(),
            Padding(padding: PaddingHelper.xxxLarge.getPadding(top: true)),
            customElevatedButton(
              backgroundColor: AppColors.mainGreen,
              onPressed: () {},
              child: customText(
                  title: AppStrings.onboardingButton,
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Padding(padding: PaddingHelper.small.all),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customText(
                  title: AppStrings.alreadyAccount,
                  color: AppColors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                customTextButton(
                  onPressed: () {},
                  child: customText(
                    title: AppStrings.signIn,
                    color: AppColors.mainGreen,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
