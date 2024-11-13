// ignore_for_file: avoid_print

import 'package:count_me/app/components/constants/index.dart';
import 'package:count_me/app/components/enums/index.dart';
import 'package:count_me/app/components/widgets/custom_elevated_button.dart';
import 'package:count_me/app/components/widgets/custom_text.dart';
import 'package:count_me/app/presentation/auth/register/widget/register_form.dart';
import 'package:count_me/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

Padding registerBody(BuildContext context) => Padding(
      padding: PaddingHelper.fixed.getPadding(left: true, right: true),
      child: Column(
        children: [
          SizedBox(height: SizedBoxHeight.top.value),

          // Profile Image
          GestureDetector(
            onTap: () {
              print('Resme tıklandı!');
            },
            child: ImageConstants.user
                .toImage(height: context.screenHeight * 0.15),
          ),
          SizedBox(height: SizedBoxHeight.xxLarge.value),

          // Register TForm
          registerForm(),
          SizedBox(height: SizedBoxHeight.top.value),

          // Register Button
          customElevatedButton(
            backgroundColor: AppColors.mainGreen,
            onPressed: () {},
            child: customText(
              title: AppStrings.register,
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
