// ignore_for_file: avoid_print, unused_element

import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/base/state/base_state.dart';
import 'package:count_me/core/components/elevatedButton/next_button.dart';
import 'package:count_me/core/components/loading_indicator/loading_indicator.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/constants/enums/index.dart';
import 'package:count_me/core/extension/context_extension.dart';
import 'package:count_me/core/model/user/user_model.dart';
import 'package:count_me/view/auth/long_onboarding/cubit/long_onboarding_state.dart';
import 'package:count_me/view/auth/long_onboarding/model/onboarding_page_model.dart';
import 'package:count_me/view/auth/long_onboarding/widget/motivation_page_widget.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/birthday_select.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/current_goals.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/current_weight_select.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/gender_select.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/height_select.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/ideal_weight_select.dart';
import 'package:count_me/view/auth/long_onboarding/view/profile/name_input.dart';
import 'package:count_me/view/auth/long_onboarding/cubit/long_onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileGroup extends StatefulWidget {
  //final VoidCallback onNextGroup;
  //final ValueChanged<int> onQuestionChange;

  const ProfileGroup({
    //required this.onNextGroup,
    //required this.onQuestionChange,
    super.key,
  });

  @override
  State<ProfileGroup> createState() => _ProfileGroupState();
}

class _ProfileGroupState extends BaseState<ProfileGroup> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LongOnboardingCubit, LongOnboardingState<UserModel>>(
      builder: (context, state) {
        final cubit = context.read<LongOnboardingCubit>();
        final state = cubit.state;
        final pageWidgets = _buildPageWidgets();

        if (state.status == Status.loading) {
          return LoadingIndicator();
        } else if (state.status == Status.failure) {
          return Center(child: Text(state.error ?? 'Bir hata oluştu.'));
        }
        return Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (index) {
                  final pageWidgets = _buildPageWidgets();

                  if (pageWidgets[index].isQuestion) {
                    cubit.updateQuestion(
                        index + 1); // Eğer soruysa questionIndex güncellenir
                  }
                },
                itemCount: state.questionCounts[state.currentStep],
                itemBuilder: (context, index) {
                  final pageWidgets = _buildPageWidgets();
                  return pageWidgets[index].widget;
                },
              ),
            ),
            NextButton(
              onNext: () {
                if (state.currentQuestion <
                    state.questionCounts[state.currentStep]) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                  cubit.goToNextQuestion();
                } else {
                  print('Son soruya ulaşıldı');
                  cubit.goToNextGroup();
                }
              },
            ),
            const SizedBox(height: 40),
          ],
        );
      },
    );
  } // Default veya boş durum

  List<OnboardingPage> _buildPageWidgets() {
    return [
      OnboardingPage(
        widget: CurrentGoals(),
        isQuestion: true,
      ),
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
      OnboardingPage(widget: GenderSelect(), isQuestion: true),
      OnboardingPage(widget: BirthdaySelect(), isQuestion: true),
      OnboardingPage(widget: HeightSelect(), isQuestion: true),
      OnboardingPage(widget: CurrentWeightSelect(), isQuestion: true),
      OnboardingPage(widget: IdealWeightSelect(), isQuestion: true),
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
      OnboardingPage(widget: NameInput(), isQuestion: true),
    ];
  }
}
