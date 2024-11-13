import 'package:count_me/app/components/constants/index.dart';
import 'package:count_me/app/components/widgets/index.dart';
import 'package:count_me/app/presentation/splash/widget/count_me_in.dart';
import 'package:count_me/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../components/enums/index.dart';

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
            ImageConstants.appIcon.toImage(
              height: context.screenHeight * 0.25,
            )
          ],
        ),
      ),
    );
