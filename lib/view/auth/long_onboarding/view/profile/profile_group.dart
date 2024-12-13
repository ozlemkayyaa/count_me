// ignore_for_file: avoid_print

import 'package:count_me/core/components/elevatedButton/next_button.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/constants/enums/image_enum.dart';
import 'package:count_me/core/extension/context_extension.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/birthday_select.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/current_goals.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/gender_select.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/height_select.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/current_weight_select.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/ideal_weight_select.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/name_input.dart';
import 'package:count_me/view/auth/long_onboarding/widget/motivation_page_widget.dart';
import 'package:flutter/material.dart';

class ProfileGroup extends StatefulWidget {
  final VoidCallback onNextGroup; // Activity grubuna geçmek için callback
  const ProfileGroup({required this.onNextGroup, super.key});

  @override
  State<ProfileGroup> createState() => _ProfileGroupState();
}

class _ProfileGroupState extends State<ProfileGroup> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _goToNextPage() {
    if (_currentPage < 8) {
      // Profile grubundaki toplam sayfa
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        _currentPage++;
      });
    } else {
      widget.onNextGroup(); // Activity grubuna geçiş
      print('Geçiş tetiklendi: ActivityGroup');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              // CURRENT GOALS
              CurrentGoals(
                  pageController: _pageController, goToNextPage: _goToNextPage),

              // MOTIVATION PAGE - 1
              MotivationPageWidget(
                image: ImageEnum.motivation1.toPng,
                title: TextSpan(
                    text: AppStrings.motivation,
                    style: context.textTheme.headlineSmall),
                subtitle: TextSpan(
                    text: AppStrings.motivation1,
                    style: context.textTheme.headlineSmall!
                        .copyWith(color: AppColors.mainGreen)),
              ),

              // GENDER SELECT
              GenderSelect(
                  pageController: _pageController, goToNextPage: _goToNextPage),

              // BIRTHDAY SELECT
              BirthdaySelect(
                  pageController: _pageController, goToNextPage: _goToNextPage),

              // HEIGHT SELECT
              HeightSelect(
                  pageController: _pageController, goToNextPage: _goToNextPage),

              // CURRENT WEIGHT
              CurrentWeightSelect(
                  pageController: _pageController, goToNextPage: _goToNextPage),

              // IDEAL WEIGHT
              IdealWeightSelect(
                  pageController: _pageController, goToNextPage: _goToNextPage),

              // MOTIVATION PAGE - 2
              MotivationPageWidget(
                image: ImageEnum.motivation2.toPng,
                title: TextSpan(
                  text: AppStrings.losing,
                  style: context.textTheme.headlineSmall,
                  children: [
                    // TODO: BURADAKİ KG DEĞERİ AYRI HESAPLANCAK
                    TextSpan(
                      text: " 11.7",
                      style: context.textTheme.headlineMedium!
                          .copyWith(color: AppColors.reddishOrange),
                    ),
                    TextSpan(
                        text: AppStrings.goalKg,
                        style: context.textTheme.headlineSmall),
                  ],
                ),
                subtitle: TextSpan(
                    text: AppStrings.doIt,
                    style: context.textTheme.headlineMedium!
                        .copyWith(color: AppColors.mainGreen)),
              ),
              NameInput(
                  pageController: _pageController, goToNextPage: _goToNextPage),
            ],
          ),
        ),
        NextButton(onNext: _goToNextPage),
        SizedBox(height: 40),
      ],
    );
  }
}
