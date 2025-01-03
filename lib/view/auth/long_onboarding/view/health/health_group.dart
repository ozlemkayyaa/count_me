// ignore_for_file: avoid_print, unused_element

import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/view/auth/long_onboarding/model/onboarding_page_model.dart';
import 'package:count_me/view/auth/long_onboarding/view/health/health_concern.dart';
import 'package:count_me/view/auth/long_onboarding/cubit/long_onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:count_me/core/components/elevatedButton/next_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                pageController: _pageController, goToNextPage: _onNextPage),
            isQuestion: true)
      ]);
    }
  }

  void _onNextPage() {
    final cubit = context.read<LongOnboardingCubit>();
    if (currentPage < _pages.length - 1) {
      setState(() {
        currentPage++;
        if (_pages[currentPage].isQuestion) {
          _currentQuestionIndex++;
          widget.onQuestionChange(_currentQuestionIndex);
        }
      });
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      cubit.goToNextPage();
      if (cubit.state.status == Status.failure) {
        print(cubit.state.error ?? 'Bir hata oluştu');
        return;
      }
      widget.onNextGroup();
    }
  }

  void onPreviousPage() {
    final cubit = context.read<LongOnboardingCubit>();
    if (currentPage > 0) {
      setState(() {
        currentPage--;
        if (_pages[currentPage].isQuestion) {
          _currentQuestionIndex--;
          widget.onQuestionChange(_currentQuestionIndex);
        }
      });
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      cubit.goToPreviousPage();
    }
  }

  @override
  bool canGoBack() {
    return currentPage > 0; // İlk sayfa değilse geri gidebilir
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LongOnboardingCubit, GenericCubitState>(
      builder: (context, state) {
        if (state.status == Status.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.status == Status.failure) {
          return Center(child: Text(state.error ?? 'Bir hata oluştu.'));
        } else if (state.status == Status.initial ||
            state.status == Status.success) {
          return _buildOnboardingHealthContent();
        }
        return Container(); // Default veya boş durum
      },
    );
  }

  Column _buildOnboardingHealthContent() {
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
        NextButton(onNext: _onNextPage),
        SizedBox(height: 40),
      ],
    );
  }
}
