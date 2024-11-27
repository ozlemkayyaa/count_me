import '../../../../core/components/index.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app/index.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/constants/enums/index.dart';
import 'count_me_in.dart';

Padding splashBody(BuildContext context) => Padding(
      padding: PaddingHelper.fixed.getPadding(left: true, right: true),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: SizedBoxHeight.top.value),

            // Count Me In Text
            countMeIn(),

            // SubTitle
            customText(
              title: AppStrings.splashText,
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: AppColors.white,
            ),
            SizedBox(height: SizedBoxHeight.xxxLarge.value),

            // App Icon
            ImageEnum.appIcon.toImage(
              height: context.screenHeight * 0.25,
            )
          ],
        ),
      ),
    );
