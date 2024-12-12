import 'package:count_me/core/components/outlinedButton/custom_outlined_button.dart';
import 'package:count_me/core/constants/app/app_strings.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_bloc.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_event.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_state.dart';
import 'package:count_me/view/auth/long_onboarding/widget/onboarding_page_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrentActivityLevel extends StatelessWidget {
  final PageController pageController;
  final VoidCallback goToNextPage;
  const CurrentActivityLevel(
      {super.key, required this.pageController, required this.goToNextPage});

  static const List<Map<String, dynamic>> activityOptions = [
    {
      'title': AppStrings.activityLevel1,
      'value': AppStrings.activityLevel1,
      'subtitle': AppStrings.activityLevelText1
    },
    {
      'title': AppStrings.activityLevel2,
      'value': AppStrings.activityLevel2,
      'subtitle': AppStrings.activityLevelText2
    },
    {
      'title': AppStrings.acvitiyLevel3,
      'value': AppStrings.acvitiyLevel3,
      'subtitle': AppStrings.activityLevelText3
    },
    {
      'title': AppStrings.activityLevel4,
      'value': AppStrings.activityLevel4,
      'subtitle': AppStrings.activityLevelText4
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LongOnboardingBloc, LongOnboardingState>(
      builder: (context, state) {
        if (state is LongOnboardingInProgress) {
          String? selectActivityLevel = state.userOnboardingModel.activityLevel;

          return OnboardingPageTemplate(
            question: AppStrings.question8,
            body: Column(
              children: activityOptions.map((options) {
                return CustomOutlinedButton(
                  padding: const EdgeInsets.only(left: 30.0),
                  usePaddingForLeadingIcon: true,
                  isSelected: selectActivityLevel == options['value'],
                  subtitle: options['subtitle'],
                  title: options['title'],
                  onPressed: () {
                    selectActivityLevel = options['value'];
                    context.read<LongOnboardingBloc>().add(UpdateProfileEvent(
                        {'activityLevel': selectActivityLevel}));
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
