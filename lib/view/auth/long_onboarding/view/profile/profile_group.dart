// ignore_for_file: avoid_print

import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/components/elevatedButton/next_button.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/constants/enums/image_enum.dart';
import 'package:count_me/core/extension/context_extension.dart';
import 'package:count_me/view/auth/long_onboarding/model/onboarding_page_model.dart';
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
  final VoidCallback onNextGroup;
  final ValueChanged<int> onQuestionChange;

  const ProfileGroup({
    required this.onNextGroup,
    super.key,
    required this.onQuestionChange,
  });

  @override
  State<ProfileGroup> createState() => _ProfileGroupState();
}

class _ProfileGroupState extends BaseState<ProfileGroup> {
  final PageController _pageController = PageController();

  @override
  int currentPage = 0;

  final int totalPages = 7;
  final List<OnboardingPage> _pages = [];
  int _currentQuestionIndex = 1;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_pages.isEmpty) {
      // Sayfalar bir kez oluşturulmalı
      _pages.addAll([
        // CURRENT GOALS
        OnboardingPage(
          widget: CurrentGoals(
              pageController: _pageController, goToNextPage: _goToNextPage),
          isQuestion: true,
        ),

        // MOTIVATION PAGE - 1
        OnboardingPage(
            widget: MotivationPageWidget(
              image: ImageEnum.motivation1.toPng,
              title: TextSpan(
                  text: AppStrings.motivation,
                  style: context.textTheme.headlineSmall),
              subtitle: TextSpan(
                  text: AppStrings.motivation1,
                  style: context.textTheme.headlineSmall!
                      .copyWith(color: AppColors.mainGreen)),
            ),
            isQuestion: false),

        // GENDER SELECT
        OnboardingPage(
            widget: GenderSelect(
              pageController: _pageController,
              goToNextPage: _goToNextPage,
            ),
            isQuestion: true),

        // BIRTHDAY SELECT
        OnboardingPage(
            widget: BirthdaySelect(
                pageController: _pageController, goToNextPage: _goToNextPage),
            isQuestion: true),

        // HEIGHT SELECT
        OnboardingPage(
            widget: HeightSelect(
                pageController: _pageController, goToNextPage: _goToNextPage),
            isQuestion: true),

        // CURRENT WEIGHT
        OnboardingPage(
            widget: CurrentWeightSelect(
                pageController: _pageController, goToNextPage: _goToNextPage),
            isQuestion: true),

        // IDEAL WEIGHT
        OnboardingPage(
            widget: IdealWeightSelect(
                pageController: _pageController, goToNextPage: _goToNextPage),
            isQuestion: true),

        // MOTIVATION PAGE - 2
        OnboardingPage(
            widget: MotivationPageWidget(
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
            isQuestion: false),

        // NAME
        OnboardingPage(
            widget: NameInput(
                pageController: _pageController, goToNextPage: _goToNextPage),
            isQuestion: true),
      ]);
    }
  }

  void _goToNextPage() {
    if (currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        currentPage++;
        if (_pages[currentPage].isQuestion) {
          // Sadece soru sayfalarında ilerler
          _currentQuestionIndex++;
          widget.onQuestionChange(_currentQuestionIndex);
        }
      });
    } else {
      widget.onNextGroup();
    }
  }

  @override
  void goToPreviousPage() {
    if (currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        currentPage--;
        if (_pages[currentPage].isQuestion) {
          _currentQuestionIndex--;
          widget.onQuestionChange(_currentQuestionIndex);
        }
      });
    }
  }

  @override
  bool canGoBack() {
    return currentPage > 0; // İlk sayfa değilse geri gidebilir
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _pages.length,
            itemBuilder: (context, index) => _pages[index].widget,
          ),
        ),
        NextButton(
          onNext: () {
            print("Profil Bölümü: NextButton tıklandı, sayfa geçiyor...");
            _goToNextPage();
          },
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
