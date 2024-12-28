import 'package:count_me/core/extension/index.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app/index.dart';
import '../../../../core/constants/enums/index.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // App Icon
        IconEnum.appIcon.toImage(height: context.ultraHighValue),
        SizedBox(height: SizedBoxHeight.mediumSmall.value),

        // Hello Text
        Text(
          AppStrings.hello,
          style: context.textTheme.titleLarge?.copyWith(
              color: AppColors.mainGreen, fontWeight: FontWeight.w500),
        ),

        // Sign In text
        SizedBox(height: SizedBoxHeight.xsmall.value),
        Text(
          AppStrings.signText,
          style: context.textTheme.bodySmall
              ?.copyWith(color: AppColors.grey, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
