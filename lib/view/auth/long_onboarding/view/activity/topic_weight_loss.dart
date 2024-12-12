import 'package:count_me/core/components/outlinedButton/custom_outlined_button.dart';
import 'package:count_me/core/constants/app/app_strings.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_bloc.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_event.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_state.dart';
import 'package:count_me/view/auth/long_onboarding/widget/onboarding_page_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopicWeightLoss extends StatelessWidget {
  final PageController pageController;
  final VoidCallback goToNextPage;
  const TopicWeightLoss(
      {super.key, required this.pageController, required this.goToNextPage});

  static const List<Map<String, dynamic>> weightLossExperienceOptions = [
    {
      'title': AppStrings.beginner,
      'value': AppStrings.beginner,
      'subtitle': AppStrings.beginnerText
    },
    {
      'title': AppStrings.intermediate,
      'value': AppStrings.intermediate,
      'subtitle': AppStrings.intermediateText
    },
    {
      'title': AppStrings.master,
      'value': AppStrings.master,
      'subtitle': AppStrings.masterText
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LongOnboardingBloc, LongOnboardingState>(
      builder: (context, state) {
        if (state is LongOnboardingInProgress) {
          String? selectWeightLossExperience =
              state.userOnboardingModel.weightLossExperience;

          return OnboardingPageTemplate(
            question: AppStrings.question9,
            body: Column(
              children: weightLossExperienceOptions.map((options) {
                return CustomOutlinedButton(
                  padding: const EdgeInsets.only(left: 30.0),
                  usePaddingForLeadingIcon: true,
                  isSelected: selectWeightLossExperience == options['value'],
                  subtitle: options['subtitle'],
                  title: options['title'],
                  onPressed: () {
                    selectWeightLossExperience = options['value'];
                    context.read<LongOnboardingBloc>().add(UpdateProfileEvent(
                        {'activityLevel': selectWeightLossExperience}));
                  },
                );
              }).toList(),
            ),
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
