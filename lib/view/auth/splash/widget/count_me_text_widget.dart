import 'package:count_me/core/constants/app/index.dart';
import 'package:flutter/material.dart';

class CountMeTextWidget extends StatelessWidget {
  const CountMeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.countMe,
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
        ),
        Text(
          AppStrings.countIn,
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                fontSize: 36,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                color: AppColors.white,
              ),
        ),
      ],
    );
  }
}
