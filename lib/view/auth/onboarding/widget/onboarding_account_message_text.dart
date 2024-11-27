import 'package:count_me/core/components/index.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app/index.dart';

Row onboardingAccountMessageText(BuildContext context) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        customText(
          title: AppStrings.dontAccount,
          color: AppColors.grey,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        customTextButton(
          onPressed: () {},
          child: customText(
            title: AppStrings.signUp,
            color: AppColors.mainGreen,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
