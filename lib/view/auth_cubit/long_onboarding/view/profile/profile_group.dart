// ignore_for_file: avoid_print, unused_element

import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/components/elevatedButton/next_button.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/constants/enums/index.dart';
import 'package:count_me/core/extension/context_extension.dart';
import 'package:count_me/view/auth/long_onboarding/model/onboarding_page_model.dart';
import 'package:count_me/view/auth/long_onboarding/widget/motivation_page_widget.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/view/profile/birthday_select.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/view/profile/current_goals.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/view/profile/current_weight_select.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/view/profile/gender_select.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/view/profile/height_select.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/view/profile/ideal_weight_select.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/view/profile/name_input.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/cubit/long_onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileGroup extends StatefulWidget {
  final VoidCallback onNextGroup;
  final ValueChanged<int> onQuestionChange;

  const ProfileGroup({
    required this.onNextGroup,
    required this.onQuestionChange,
    super.key,
  });

  @override
  State<ProfileGroup> createState() => _ProfileGroupState();
}

class _ProfileGroupState extends BaseState<ProfileGroup> {
  final PageController _pageController = PageController();

  @override
  int currentPage = 0;
  final int totalPages = 7;
  int _currentQuestionIndex = 1;

  final List<OnboardingPage> _pages = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_pages.isEmpty) {
      // Sayfalar bir kez oluşturulmalı
      _pages.addAll([
        // CURRENT GOALS
        OnboardingPage(
          widget: CurrentGoals(
              pageController: _pageController, goToNextPage: _onNextPage),
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
              goToNextPage: _onNextPage,
            ),
            isQuestion: true),

        // BIRTHDAY SELECT
        OnboardingPage(
            widget: BirthdaySelect(
                pageController: _pageController, goToNextPage: _onNextPage),
            isQuestion: true),

        // HEIGHT SELECT
        OnboardingPage(
            widget: HeightSelect(
                pageController: _pageController, goToNextPage: _onNextPage),
            isQuestion: true),

        // CURRENT WEIGHT
        OnboardingPage(
            widget: CurrentWeightSelect(
                pageController: _pageController, goToNextPage: _onNextPage),
            isQuestion: true),

        // IDEAL WEIGHT
        OnboardingPage(
            widget: IdealWeightSelect(
                pageController: _pageController, goToNextPage: _onNextPage),
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
                pageController: _pageController, goToNextPage: _onNextPage),
            isQuestion: true),
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

  void _onPreviousPage() {
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
          return _buildOnboardingContent();
        }
        return Container(); // Default veya boş durum
      },
    );
  }

  Widget _buildOnboardingContent() {
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
          onNext: _onNextPage,
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
