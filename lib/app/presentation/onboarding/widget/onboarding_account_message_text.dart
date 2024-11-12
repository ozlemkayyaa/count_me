import 'package:flutter/material.dart';
import '../../../components/constants/index.dart';
import '../../../components/widgets/index.dart';

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
