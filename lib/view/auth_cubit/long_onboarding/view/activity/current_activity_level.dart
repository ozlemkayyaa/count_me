import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/components/outlinedButton/custom_outlined_button.dart';
import 'package:count_me/core/constants/app/app_strings.dart';
import 'package:count_me/core/model/user/user_model.dart';
import 'package:count_me/view/auth/long_onboarding/widget/onboarding_page_template.dart';
import 'package:count_me/view/auth_cubit/long_onboarding/cubit/long_onboarding_cubit.dart';
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
    return BlocBuilder<LongOnboardingCubit, GenericCubitState<UserModel>>(
      builder: (context, state) {
        if (state.status == Status.initial || state.status == Status.success) {
          // UserModel'e erişim
          final userModel = state.data;

          ActivityLevel? selectActivityLevel = userModel?.activityLevel;

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
                    context.read<LongOnboardingCubit>().setupInitialUserProfile(
                        {'activityLevel': selectActivityLevel});
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
