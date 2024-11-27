import 'package:count_me/core/constants/app/app_strings.dart';
import 'package:count_me/view/auth/onboarding/widget/show_modal_widget/custom_modal_button.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/enums/index.dart';

SizedBox customModalBottomSheet() => SizedBox(
      width: double.infinity,
      height: SizedBoxHeight.modal.value,
      child: Padding(
        padding: PaddingHelper.fixed.getPadding(left: true, right: true),
        child: Column(
          children: [
            SizedBox(height: SizedBoxHeight.xxLarge.value),

            // Sign in with Google
            customModalButton(
              onPressed: () {},
              title: AppStrings.signGoogle,
              titleIcon: true,
            ),
            SizedBox(height: SizedBoxHeight.medium.value),

            // Sign in With Email -> Login Screen
            customModalButton(
              onPressed: () {},
              title: AppStrings.signEmail,
              titleIcon: false,
            ),
          ],
        ),
      ),
    );
