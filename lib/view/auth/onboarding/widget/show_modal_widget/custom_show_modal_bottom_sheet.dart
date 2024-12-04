import 'package:count_me/core/constants/app/app_strings.dart';
import 'package:count_me/core/constants/navigation/navigation_constants.dart';
import 'package:count_me/core/init/navigation/navigation_service.dart';
import 'package:count_me/view/auth/onboarding/widget/show_modal_widget/custom_modal_button.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/enums/index.dart';

class CustomShowModalBottomSheet extends StatelessWidget {
  const CustomShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingHelper.fixed.getPadding(left: true, right: true),
      child: Column(
        children: [
          SizedBox(height: SizedBoxHeight.mediumLarge.value),

          // Sign in with Google
          CustomModalButton(
            onPressed: () {},
            title: AppStrings.signGoogle,
            titleIcon: true,
          ),
          SizedBox(height: SizedBoxHeight.medium.value),

          // Sign in With Email -> Login Screen
          CustomModalButton(
            onPressed: () {
              NavigationService.instance.navigateToPage(
                path: NavigationConstants.LOGIN,
              );
            },
            title: AppStrings.signEmail,
            titleIcon: false,
          ),
        ],
      ),
    );
  }
}
