import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/components/outlinedButton/custom_outlined_button.dart';
import 'package:count_me/core/constants/app/index.dart';
import 'package:count_me/core/model/user/user_model.dart';
import 'package:count_me/view/auth/long_onboarding/widget/onboarding_page_template.dart';
import 'package:count_me/view/auth/long_onboarding/cubit/long_onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrentGoals extends StatelessWidget {
  final PageController pageController;
  final VoidCallback goToNextPage;
  const CurrentGoals(
      {super.key, required this.pageController, required this.goToNextPage});

  static const List<Map<String, dynamic>> goalsOptions = [
    {'title': AppStrings.loseWeight, 'value': AppStrings.loseWeight},
    {'title': AppStrings.healtier, 'value': AppStrings.healtier},
    {'title': AppStrings.lookBetter, 'value': AppStrings.lookBetter},
    {'title': AppStrings.reduce, 'value': AppStrings.reduce},
    {'title': AppStrings.sleep, 'value': AppStrings.sleep},
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LongOnboardingCubit, GenericCubitState<UserModel>>(
      builder: (context, state) {
        if (state.status == Status.initial || state.status == Status.success) {
          // UserModel'e erişim
          final userModel = state.data;

          // Seçilen amaç
          String? selectedGoal = userModel?.goal;

          return OnboardingPageTemplate(
            question: AppStrings.question1,
            body: SingleChildScrollView(
              child: Column(
                children: goalsOptions.map((option) {
                  return CustomOutlinedButton(
                    usePaddingForLeadingIcon: false,
                    title: option['title'],
                    isSelected: selectedGoal == option['value'],
                    onPressed: () {
                      // Seçilen goal'ı güncellendi
                      selectedGoal = option['value'];
                      context
                          .read<LongOnboardingCubit>()
                          .setupInitialUserProfile({'goals': selectedGoal});
                    },
                  );
                }).toList(),
              ),
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
          return const Center(child: Text("Goals not available"));
        }
      },
    );
  }
}
