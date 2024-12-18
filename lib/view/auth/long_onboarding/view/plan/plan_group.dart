import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/components/index.dart';
import 'package:count_me/view/auth/long_onboarding/model/onboarding_page_model.dart';
import 'package:flutter/material.dart';

class PlanGroup extends StatefulWidget {
  final VoidCallback onNextGroup;
  final ValueChanged<int> onQuestionChange;

  const PlanGroup({
    super.key,
    required this.onNextGroup,
    required this.onQuestionChange,
  });

  @override
  State<PlanGroup> createState() => _PlanGroupState();
}

class _PlanGroupState extends BaseState<PlanGroup> {
  final PageController _pageController = PageController();
  @override
  int currentPage = 0;
  final int totalPages = 7;
  final List<OnboardingPage> _pages = [];
  int _currentQuestionIndex = 1;

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
    return currentPage > 0;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Center(
        child: Text("Plan Group"),
      ),
    );
  }
}
