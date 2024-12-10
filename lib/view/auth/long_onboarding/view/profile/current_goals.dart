import 'package:count_me/core/components/outlinedButton/custom_outlined_button.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_bloc.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_event.dart';
import 'package:count_me/view/auth/long_onboarding/viewModel/bloc/long_onboarding_state.dart';
import 'package:count_me/view/auth/long_onboarding/widget/long_onboarding_templete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrentGoals extends StatelessWidget {
  final PageController pageController;
  final VoidCallback goToNextPage;
  const CurrentGoals(
      {super.key, required this.pageController, required this.goToNextPage});

  // bool _isPageValid(LongOnboardingState state) {
  //   if (state is LongOnboardingInProgress) {
  //     return state.userOnboardingModel.goals != null;
  //   }
  //   return false;
  // }

  static const List<Map<String, dynamic>> goalsOptions = [
    {'title': AppStrings.loseWeight, 'value': AppStrings.loseWeight},
    {'title': AppStrings.healtier, 'value': AppStrings.healtier},
    {'title': AppStrings.lookBetter, 'value': AppStrings.lookBetter},
    {'title': AppStrings.reduce, 'value': AppStrings.reduce},
    {'title': AppStrings.sleep, 'value': AppStrings.sleep},
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LongOnboardingBloc, LongOnboardingState>(
      builder: (context, state) {
        if (state is LongOnboardingInProgress) {
          // Seçilen goal'ı bir değişkende tutalım
          String? selectedGoal = state.userOnboardingModel.goals;
          return OnboardingPageTemplate(
            question: AppStrings.question1,
            body: Column(
              children: goalsOptions.map((option) {
                return CustomOutlinedButton(
                  usePaddingForLeadingIcon: false,
                  title: option['title'],
                  isSelected: selectedGoal == option['value'],
                  onPressed: () {
                    selectedGoal =
                        option['value']; // Seçilen goal'ı güncellendi
                    context
                        .read<LongOnboardingBloc>()
                        .add(UpdateProfileEvent({'goals': selectedGoal}));
                  },
                );
              }).toList(),
            ),
            // onNext: () {
            //   if (_isPageValid(state)) {
            //     pageController.nextPage(
            //       duration: Duration(milliseconds: 300),
            //       curve: Curves.fastOutSlowIn,
            //     );
            //   } else {
            //     ScaffoldMessenger.of(context).showSnackBar(
            //       SnackBar(
            //         content: Text('Please select an option!'),
            //         behavior: SnackBarBehavior.floating,
            //       ),
            //     );
            //   }
            // },
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
