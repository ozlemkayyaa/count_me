import 'package:count_me/core/extension/index.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app/index.dart';

class AccountMessageTextWidget extends StatelessWidget {
  const AccountMessageTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.dontAccount,
          style: context.textTheme.bodySmall?.copyWith(color: AppColors.grey),
        ),
        TextButton(onPressed: () {}, child: Text(AppStrings.signUp)),
      ],
    );
  }
}
