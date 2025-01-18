import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/components/index.dart';
import 'package:count_me/view/auth/long_onboarding/model/onboarding_page_model.dart';
import 'package:count_me/view/auth/long_onboarding/cubit/long_onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlanGroup extends StatefulWidget {
  // final VoidCallback onNextGroup;
  // final ValueChanged<int> onQuestionChange;

  const PlanGroup({
    super.key,
    // required this.onNextGroup,
    // required this.onQuestionChange,
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

  // void onPreviousPage() {
  //   final cubit = context.read<LongOnboardingCubit>();
  //   if (currentPage > 0) {
  //     setState(() {
  //       currentPage--;
  //       if (_pages[currentPage].isQuestion) {
  //         _currentQuestionIndex--;
  //         widget.onQuestionChange(_currentQuestionIndex);
  //       }
  //     });
  //     _pageController.previousPage(
  //       duration: const Duration(milliseconds: 300),
  //       curve: Curves.easeInOut,
  //     );
  //   } else {
  //     cubit.goToPreviousQuestion();
  //   }
  // }

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
