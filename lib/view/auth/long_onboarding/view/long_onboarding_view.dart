// ignore_for_file: avoid_print
import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/base/view/base_view_bloc.dart';
import 'package:count_me/core/constants/app/app_strings.dart';
import 'package:count_me/core/constants/enums/index.dart';
import 'package:count_me/core/extension/context_extension.dart';
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
  final PageController _mainPageController = PageController();

  int _currentStep = 0;
  int _currentQuestion = 1;

  final List<Widget> _groups = [];

  // Her grup için GlobalKey tanımla
  final List<GlobalKey<BaseState>> _groupKeys = [
    GlobalKey<BaseState<ProfileGroup>>(),
    GlobalKey<BaseState<ActivityGroup>>(),
    GlobalKey<BaseState<HealthGroup>>(),
    GlobalKey<BaseState<PlanGroup>>(),
  ];

  @override
  void initState() {
    super.initState();
    _groups.addAll([
      ProfileGroup(
        key: _groupKeys[0],
        onNextGroup: _goToNextGroup,
        onQuestionChange: (int questionNumber) {
          setState(() {
            _currentQuestion = questionNumber;
          });
        },
      ),
      ActivityGroup(
        key: _groupKeys[1],
        onNextGroup: _goToNextGroup,
        onQuestionChange: (int questionNumber) {
          setState(() {
            _currentQuestion = questionNumber;
          });
        },
      ),
      HealthGroup(
        key: _groupKeys[2],
        onNextGroup: _goToNextGroup,
        onQuestionChange: (int questionNumber) {
          setState(() {
            _currentQuestion = questionNumber;
          });
        },
      ),
      PlanGroup(
        key: _groupKeys[3],
        onNextGroup: _goToNextGroup,
        onQuestionChange: (int questionNumber) {
          setState(() {
            _currentQuestion = questionNumber;
          });
        },
      ),
    ]);
  }

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
    if (_currentStep < _groups.length - 1) {
      setState(() {
        _currentStep++;
        _currentQuestion = 1; // Yeni gruba geçince soru 1'e döner
      });
      _mainPageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _handlePreviousButton() {
    // Mevcut grubun State'ine eriş ve `goToPreviousPage` çağır
    final currentGroupKey = _groupKeys[_currentStep];
    final currentGroupState = currentGroupKey.currentState;

    if (currentGroupState != null && currentGroupState.canGoBack()) {
      // Geri gidilebiliyorsa, önce grup içinde geri git
      if (currentGroupState.canGoBack()) {
        currentGroupState.goToPreviousPage();
        return;
      }
    }

    // Grup içinden geri gidilemiyorsa bir önceki gruba geç
    if (_currentStep > 0) {
      setState(() {
        _currentStep--;
        _currentQuestion = 1; // Geri gidince önceki grubun son sorusuna gider
      });
      _mainPageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
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
                // HEADER
                SizedBox(height: 18),

                // Geri Butonu
                Row(
                  children: [
                    GestureDetector(
                      onTap: _handlePreviousButton,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 50.0),
                        child:
                            IconEnum.arrowLeft.toImage(height: 16, width: 16),
                      ),
                    ),

                    // Dinamik Başlık
                    Text.rich(
                      TextSpan(
                        text: _categories[_currentStep], // Başlık kısmı
                        style: context.textTheme.bodyMedium,
                        children: [
                          TextSpan(
                              text:
                                  " $_currentQuestion/${_questionCounts[_currentStep]}", // Soru numarası kısmı
                              style: context.textTheme.labelSmall),
                        ],
                      ),
                    ),
                  ],
                ),

                // Stepper Widget cpompeted
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: StepperWidget(currentStep: _currentStep),
                ),

                // Sayfalar
                Expanded(
                  child: PageView.builder(
                    controller: _mainPageController,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _groups.length,
                    itemBuilder: (context, index) => _groups[index],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
