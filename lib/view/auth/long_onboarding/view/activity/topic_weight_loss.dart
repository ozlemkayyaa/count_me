import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/components/outlinedButton/custom_outlined_button.dart';
import 'package:count_me/core/constants/app/app_strings.dart';
import 'package:count_me/core/model/user/user_model.dart';
import 'package:count_me/view/auth/long_onboarding/widget/onboarding_page_template.dart';
import 'package:count_me/view/auth/long_onboarding/cubit/long_onboarding_cubit.dart';
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
    return BlocBuilder<LongOnboardingCubit, GenericCubitState<UserModel>>(
      builder: (context, state) {
        if (state.status == Status.initial || state.status == Status.success) {
          // UserModel'e erişim
          final userModel = state.data;
          ActivityLevel? selectWeightLossExperience = userModel?.weightLoss;

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
                    context.read<LongOnboardingCubit>().setupInitialUserProfile(
                        {'weightLoss': selectWeightLossExperience});
                  },
                );
              }).toList(),
            ),
          );
        } else if (state.status == Status.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.status == Status.failure) {
          return Center(
            child: Text(
              "Bir hata oluştu: ${state.error ?? "Bilinmeyen hata"}",
              style: const TextStyle(color: Colors.red),
            ),
          );
        } else {
          return Center(child: Text("Activity level: ${state.status}"));
        }
      },
    );
  }
}
