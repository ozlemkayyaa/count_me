import 'package:count_me/core/components/index.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:flutter/material.dart';

class CountMeTextWidget extends StatelessWidget {
  const CountMeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          title: AppStrings.countMe,
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
        CustomText(
          title: AppStrings.countIn,
          fontSize: 36,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.italic,
          color: AppColors.white,
        ),
      ],
    );
  }
}
