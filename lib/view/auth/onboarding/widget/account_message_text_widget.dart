import 'package:flutter/material.dart';

import '../../../../core/components/index.dart';
import '../../../../core/constants/app/index.dart';

class AccountMessageTextWidget extends StatelessWidget {
  const AccountMessageTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          title: AppStrings.dontAccount,
          color: AppColors.grey,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        TextButton(onPressed: () {}, child: Text(AppStrings.signUp)),
      ],
    );
  }
}
