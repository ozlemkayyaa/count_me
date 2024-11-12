import 'package:count_me/app/components/constants/app_colors.dart';
import 'package:count_me/app/components/constants/app_strings.dart';
import 'package:count_me/app/components/widgets/custom_text.dart';
import 'package:count_me/app/components/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

Row onboardingAccountMessageText() => Row(
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
    );
