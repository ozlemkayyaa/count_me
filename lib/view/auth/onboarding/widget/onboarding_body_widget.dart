import 'package:flutter/material.dart';

import '../../../../core/constants/app/index.dart';
import '../../../../core/constants/enums/index.dart';
import '../../../../core/extension/context_extension.dart';
import 'index.dart';

class OnboardingBodyWidget extends StatelessWidget {
  const OnboardingBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingHelper.fixed.getPadding(left: true, right: true),
      child: Column(
        children: [
          SizedBox(height: SizedBoxHeight.top.value),

          // Image
          ImageEnum.onboarding.toImage(
            height: context.screenHeight * 0.4,
          ),
          SizedBox(height: SizedBoxHeight.large.value),

          // Welcome Text
          WelcomeTextWidget(),
          SizedBox(height: SizedBoxHeight.small.value),

          // Message
          MessageTextWidget(),
          SizedBox(height: SizedBoxHeight.xxLarge.value),

          // Get Started Button
          ElevatedButton(
            onPressed: () {
              // Modal Bottom Sheet
              showModalBottomSheet<void>(
                scrollControlDisabledMaxHeightRatio: 0.3,
                isDismissible: false,
                context: context,
                builder: (context) => CustomShowModalBottomSheet(),
              );
            },
            child: Text(
              AppStrings.onboardingButton,
            ),
          ),

          SizedBox(height: SizedBoxHeight.small.value),

          // Don't have an account? -> Register Screen
          AccountMessageTextWidget(),
        ],
      ),
    );
  }
}
