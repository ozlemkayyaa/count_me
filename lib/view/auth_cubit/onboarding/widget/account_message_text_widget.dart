import 'package:count_me/core/constants/navigation/navigation_constants.dart';
import 'package:count_me/core/extension/index.dart';
import 'package:count_me/core/init/navigation/navigation_service.dart';
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
        TextButton(
            onPressed: () {
              NavigationService.instance.navigateToPage(
                path: NavigationConstants.REGISTER,
              );
            },
            child: Text(AppStrings.signUp)),
      ],
    );
  }
}
