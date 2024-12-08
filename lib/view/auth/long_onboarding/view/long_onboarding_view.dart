// ignore_for_file: avoid_print

import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/base/view/base_long_onboarding_view.dart';
import 'package:count_me/core/components/index.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/constants/navigation/navigation_constants.dart';
import 'package:count_me/core/init/navigation/navigation_service.dart';
import 'package:count_me/view/auth/long_onboarding/data/onboarding_data.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_bloc.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_event.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_state.dart';
import 'package:count_me/view/auth/long_onboarding/widget/onboarding_step.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LongOnboardingView extends StatefulWidget {
  const LongOnboardingView({super.key});

  @override
  State<LongOnboardingView> createState() => _LongOnboardingViewState();
}

class _LongOnboardingViewState extends BaseState<LongOnboardingView> {
  late PageController _pageController;
  int currentIndex = 0;
  List<int> selectedOptions = List.filled(onboardingData.length, -1);

  void _onOptionSelected(int optionIndex) {
    // Liste sınır kontrolü
    if (currentIndex >= 0 && currentIndex < selectedOptions.length) {
      setState(() {
        selectedOptions[currentIndex] = optionIndex;
      });
    } else {
      print("Index out of bounds: $currentIndex");
    }
  }

  void _onNext() {
    if (currentIndex < onboardingData.length - 1) {
      setState(() {
        currentIndex++;
      });
    } else {
      NavigationService.instance.navigateToPage(path: NavigationConstants.HOME);
    }
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

    selectedOptions =
        onboardingData.isNotEmpty ? List.filled(onboardingData.length, -1) : [];
  }

  @override
  Widget build(BuildContext context) {
    assert(onboardingData.isNotEmpty, "onboardingData cannot be empty");
    final currentData = onboardingData[currentIndex];
    return BaseLongOnboardingView<LongOnboardingBloc, LongOnboardingState>(
      bloc: LongOnboardingBloc(),
      onPageBuilder: (context, bloc, state) {
        // INITIAL
        if (state is LongOnboardingInitial) {
          bloc.add(LongOnboardingStarted());
          return CustomScaffold(
            backgroundColor: AppColors.whiteBackground,
            body: const Center(
              child: CircularProgressIndicator(color: AppColors.mainGreen),
            ),
          );
        }
        return CustomScaffold(
          appBar: AppBar(
            backgroundColor: AppColors.whiteBackground,
            automaticallyImplyLeading: true,
          ),
          body: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: onboardingData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(36.0),
                      child: OnboardingStep(
                        question: onboardingData[index]['question']!,
                        options:
                            onboardingData[index]['options'] as List<String>?,
                        selectedOption: state.currentStep == index
                            ? selectedOptions[currentIndex]
                            : null,
                        onOptionSelected: (selectedIndex) {
                          context
                              .read<LongOnboardingBloc>()
                              .add(OptionSelected(selectedIndex));
                        },
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (context.read<LongOnboardingBloc>().state.currentStep <
                        onboardingData.length - 1) {
                      context
                          .read<LongOnboardingBloc>()
                          .add(NextStepRequested());
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      // Tüm adımlar tamamlandığında ana sayfaya yönlendirme
                      NavigationService.instance.navigateToPage(
                        path: NavigationConstants.HOME,
                      );
                    }
                  },
                  child: Text(
                    context.read<LongOnboardingBloc>().state.currentStep ==
                            onboardingData.length - 1
                        ? "Finish"
                        : "Next",
                  ),
                ),
              ),
              SizedBox(height: 50.0),
            ],
          ),
        );
      },
      onDispose: () {
        print("LongOnboardingView disposed");
        _pageController.dispose();
      },
      question: currentData["question"],
      options: currentData["options"],
      currentStep: currentIndex + 1,
      totalSteps: onboardingData.length,
      onOptionSelected: _onOptionSelected,
      onNext: _onNext,
    );
  }
}
