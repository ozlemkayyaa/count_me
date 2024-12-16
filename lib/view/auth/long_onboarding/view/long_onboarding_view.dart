// ignore_for_file: avoid_print

import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/base/view/base_view_bloc.dart';
import 'package:count_me/core/constants/app/app_colors.dart';
import 'package:count_me/core/constants/app/app_strings.dart';
import 'package:count_me/core/constants/enums/index.dart';
import 'package:count_me/view/auth/long_onboarding/view/activity/activity_group.dart';
import 'package:count_me/view/auth/long_onboarding/view/health/health_group.dart';
import 'package:count_me/view/auth/long_onboarding/view/plan/plan_group.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/profile_group.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_bloc.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_state.dart';
import 'package:count_me/view/auth/long_onboarding/widget/stepper_widget.dart';
import 'package:flutter/material.dart';

class LongOnboardingView extends StatefulWidget {
  const LongOnboardingView({super.key});

  @override
  State<LongOnboardingView> createState() => _LongOnboardingViewState();
}

class _LongOnboardingViewState extends BaseState<LongOnboardingView> {
  final PageController _groupController = PageController();

  int _currentStep = 0;
  int _currentQuestion = 1;

  // Kategori isimleri
  final List<String> _categories = [
    AppStrings.profile,
    AppStrings.activity,
    AppStrings.health,
    AppStrings.plan
  ];

  // Kategoriye göre soru sayıları
  final List<int> _questionCounts = [7, 2, 1, 0];

  // Bir sonraki gruba geçme
  void _goToNextGroup() {
    if (_currentStep < 3) {
      setState(() {
        _currentStep++;
        _currentQuestion = 1; // Yeni gruba geçince soru 1'e döner
      });
      _groupController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  // Bir önceki gruba dönme
  void _goToPreviousGroup() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep--;
        _currentQuestion = 1; // Geri gidince soru 1'e döner
      });
      _groupController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  // Soruda ilerleme fonksiyonu
  void _goToNextQuestion() {
    print("Current question: $_currentQuestion");
    print(
        "Max question for step $_currentStep: ${_questionCounts[_currentStep]}");
    if (_currentQuestion < _questionCounts[_currentStep]) {
      setState(() {
        _currentQuestion++;
      });
    } else {
      _goToNextGroup();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<LongOnboardingBloc, LongOnboardingState>(
      bloc: LongOnboardingBloc(),
      onPageBuilder: (context, bloc, state) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                // Üst Kısım: Geri Butonu ve Dinamik Başlık
                Row(
                  children: [
                    GestureDetector(
                      onTap: _goToPreviousGroup,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 35.0),
                        child:
                            IconEnum.arrowLeft.toImage(height: 16, width: 16),
                      ),
                    ),

                    // Dinamik Başlık
                    Text(
                      _getDynamicTitle(),
                      style: const TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // Stepper Widget
                StepperWidget(currentStep: _currentStep),

                // Sayfalar
                Expanded(
                  child: PageView(
                    controller: _groupController,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ProfileGroup(onNextGroup: _goToNextQuestion),
                      ActivityGroup(onNextGroup: _goToNextQuestion),
                      HealthGroup(onNextGroup: _goToNextQuestion),
                      PlanGroup(onNextGroup: _goToNextGroup),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Dinamik Başlık Oluşturma
  String _getDynamicTitle() {
    if (_currentStep == 3) {
      return _categories[_currentStep]; // Plan için soru sayısı gösterilmez
    }
    return "${_categories[_currentStep]} $_currentQuestion/${_questionCounts[_currentStep]}";
  }
}
