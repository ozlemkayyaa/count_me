// ignore_for_file: avoid_print

import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/view/auth/long_onboarding/model/onboarding_page_model.dart';
import 'package:count_me/view/auth/long_onboarding/view/health/health_concern.dart';
import 'package:flutter/material.dart';
import 'package:count_me/core/components/elevatedButton/next_button.dart';

class HealthGroup extends StatefulWidget {
  final VoidCallback onNextGroup;
  final ValueChanged<int> onQuestionChange;

  const HealthGroup({
    required this.onNextGroup,
    super.key,
    required this.onQuestionChange,
  });

  @override
  State<HealthGroup> createState() => _HealthGroupState();
}

class _HealthGroupState extends BaseState<HealthGroup> {
  final PageController _pageController = PageController();
  @override
  int currentPage = 0;
  final List<OnboardingPage> _pages = [];
  int _currentQuestionIndex = 1;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (_pages.isEmpty) {
      _pages.addAll([
        // HEALTH CONCERN
        OnboardingPage(
            widget: HealthConcern(
                pageController: _pageController, goToNextPage: _goToNextPage),
            isQuestion: true)
      ]);
    }
  }

  void _goToNextPage() {
    if (currentPage < 0) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        currentPage++;
      });
    } else {
      widget.onNextGroup();
      print('Geçiş tetiklendi: PlanGroup');
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
        NextButton(onNext: _goToNextPage),
        SizedBox(height: 40),
      ],
    );
  }
}
