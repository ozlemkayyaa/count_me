import 'package:count_me/core/components/index.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app/index.dart';

class AccountMessageTextWidget extends StatelessWidget {
  const AccountMessageTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
  }
}
