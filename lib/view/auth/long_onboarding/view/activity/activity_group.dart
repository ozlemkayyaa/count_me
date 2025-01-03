// ignore_for_file: avoid_print

import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
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
import 'package:count_me/view/auth/long_onboarding/cubit/long_onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                pageController: _pageController, goToNextPage: _onNextPage),
            isQuestion: true),

        // TOPIC WEIGHT LOSS
        OnboardingPage(
            widget: TopicWeightLoss(
                pageController: _pageController, goToNextPage: _onNextPage),
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
  Widget build(BuildContext context) {
    return BlocBuilder<LongOnboardingCubit, GenericCubitState>(
      builder: (context, state) {
        if (state.status == Status.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.status == Status.failure) {
          return Center(child: Text(state.error ?? 'Bir hata oluştu.'));
        } else if (state.status == Status.initial ||
            state.status == Status.success) {
          return _buildOnboardingActivityContent();
        }
        return Container(); // Default veya boş durum
      },
    );
  }

  Column _buildOnboardingActivityContent() {
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
            _onNextPage();
          },
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
