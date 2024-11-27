import 'package:count_me/core/components/index.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:flutter/material.dart';

Row countMeIn() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        customText(
          title: AppStrings.countMe,
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
        customText(
          title: AppStrings.countIn,
          fontSize: 36,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.italic,
          color: AppColors.white,
        ),
      ],
    );
