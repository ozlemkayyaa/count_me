import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/constants/enums/index.dart';
import 'package:count_me/core/extension/context_extension.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/model/onboarding_page_model.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/view/profile/birthday_select.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/view/profile/current_goals.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/view/profile/current_weight_select.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/view/profile/gender_select.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/view/profile/height_select.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/view/profile/ideal_weight_select.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/view/profile/name_input.dart';
import 'package:count_me/view/auth/long_onboarding/widget/motivation_page_widget.dart';
import 'package:flutter/material.dart';

List<OnboardingPage> buildProfilePages({
  required BuildContext context,
  required PageController pageController,
  required VoidCallback goToNextPage,
}) {
  return [
    OnboardingPage(
      widget: CurrentGoals(
        pageController: pageController,
        goToNextPage: goToNextPage,
      ),
      isQuestion: true,
    ),
    OnboardingPage(
      widget: MotivationPageWidget(
        image: ImageEnum.motivation1.toPng,
        title: TextSpan(
          text: AppStrings.motivation,
          style: context.textTheme.headlineSmall,
        ),
        subtitle: TextSpan(
          text: AppStrings.motivation1,
          style: context.textTheme.headlineSmall!.copyWith(
            color: AppColors.mainGreen,
          ),
        ),
      ),
      isQuestion: false,
    ),
    OnboardingPage(
      widget: GenderSelect(
        pageController: pageController,
        goToNextPage: goToNextPage,
      ),
      isQuestion: true,
    ),
    OnboardingPage(
      widget: BirthdaySelect(
        pageController: pageController,
        goToNextPage: goToNextPage,
      ),
      isQuestion: true,
    ),
    OnboardingPage(
      widget: HeightSelect(
        pageController: pageController,
        goToNextPage: goToNextPage,
      ),
      isQuestion: true,
    ),
    OnboardingPage(
      widget: CurrentWeightSelect(
        pageController: pageController,
        goToNextPage: goToNextPage,
      ),
      isQuestion: true,
    ),
    OnboardingPage(
      widget: IdealWeightSelect(
        pageController: pageController,
        goToNextPage: goToNextPage,
      ),
      isQuestion: true,
    ),
    OnboardingPage(
      widget: MotivationPageWidget(
        image: ImageEnum.motivation2.toPng,
        title: TextSpan(
          text: AppStrings.losing,
          style: context.textTheme.headlineSmall,
          children: [
            TextSpan(
              text: " 11.7", // Bu değer dinamik olarak değiştirilebilir.
              style: context.textTheme.headlineMedium!.copyWith(
                color: AppColors.reddishOrange,
              ),
            ),
            TextSpan(
              text: AppStrings.goalKg,
              style: context.textTheme.headlineSmall,
            ),
          ],
        ),
        subtitle: TextSpan(
          text: AppStrings.doIt,
          style: context.textTheme.headlineMedium!.copyWith(
            color: AppColors.mainGreen,
          ),
        ),
      ),
      isQuestion: false,
    ),
    OnboardingPage(
      widget: NameInput(
        pageController: pageController,
        goToNextPage: goToNextPage,
      ),
      isQuestion: true,
    ),
  ];
}
