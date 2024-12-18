// ignore_for_file: avoid_print

import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/components/elevatedButton/next_button.dart';
import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:count_me/core/constants/app/app_strings.dart';
import 'package:count_me/core/constants/enums/image_enum.dart';
import 'package:count_me/core/extension/index.dart';
import 'package:count_me/view/auth/long_onboarding/model/onboarding_page_model.dart';
import 'package:count_me/view/auth/long_onboarding/view/activity/current_activity_level.dart';
import 'package:count_me/view/auth/long_onboarding/view/activity/topic_weight_loss.dart';
import 'package:count_me/view/auth/long_onboarding/widget/motivation_page_widget.dart';
import 'package:flutter/material.dart';

class ActivityGroup extends StatefulWidget {
  final VoidCallback onNextGroup;
  final ValueChanged<int> onQuestionChange;
  const ActivityGroup(
      {required this.onNextGroup, super.key, required this.onQuestionChange});

  @override
  State<ActivityGroup> createState() => _ActivityGroupState();
}

class _ActivityGroupState extends BaseState<ActivityGroup> {
  final PageController _pageController = PageController();
  @override
  int currentPage = 0;
  final int totalPages = 2;
  final List<OnboardingPage> _pages = [];
  int _currentQuestionIndex = 1;

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
  bool canGoBack() {
    return currentPage > 0; // İlk sayfa değilse geri gidebilir
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_pages.isEmpty) {
      // Sayfalar bir kez oluşturulmalı
      _pages.addAll([
        // CURRENT ACTIVITY LEVEL
        OnboardingPage(
            widget: CurrentActivityLevel(
                pageController: _pageController, goToNextPage: _goToNextPage),
            isQuestion: true),

        // TOPIC WEIGHT LOSS
        OnboardingPage(
            widget: TopicWeightLoss(
                pageController: _pageController, goToNextPage: _goToNextPage),
            isQuestion: true),

        // MOTIVATION PAGE - 3
        OnboardingPage(
            widget: MotivationPageWidget(
              image: ImageEnum.motivation3.toPng,
              title: TextSpan(
                text: AppStrings.motivation3,
                style: context.textTheme.headlineSmall,
              ),
              subtitle: TextSpan(
                  text: AppStrings.motivation4,
                  style: context.textTheme.headlineMedium!
                      .copyWith(color: AppColors.mainGreen),
                  children: [
                    TextSpan(
                      text: AppStrings.motivation5,
                      style: context.textTheme.headlineSmall,
                    ),
                  ]),
            ),
            isQuestion: false),
      ]);
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
            print("Activity Bölümü: NextButton tıklandı, sayfa geçiyor...");
            _goToNextPage();
          },
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
